<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Address Page</title>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/youraddress.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">

</head>

<body>
    
     <header>
<jsp:include page="/header.jsp" />
</header>
    <section>
        <div class="addhead">
            <h1 class="heading">Your Addresses</h1>
        </div>
        <div class="addHolder">
            <div class="addcard">
                <a href="../profile page/address.jsp">
                <div class="addImg">
                    <img  src="/assets/img/add-location.png" alt="photo">
                </div>
                    <div class="addbtn">
                        <p>Add Address</p>
                    </div>
                </a>
            </div>
            <div class="etho">
                <!--<div class="card">
                <div class="name">
                    <h3>Name</h3>
                </div>
                <div class="details">
                    <p>70 Ram nagar street</p>
                    <p>madippakam</p>
                    <p>Chennai,60001</p>
                    <p>India</p>
                    <p>+91 7418679291</p>
                </div>
                <div class="but">
                    <button class="edit">Edit</button>
                    <button class="delete">Remove</button>
                </div>
                <div class="defa">
                    <a href="#">Default</a>
                </div>
            </div>-->
            </div>
        </div>
    </section>

    <script>
        const address = JSON.parse(localStorage.getItem("add_address"));
        const unique = JSON.parse(localStorage.getItem("uniqueID_user"));
        //  (add_address[i].uniqueID_user === unique) 
        const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));
        console.log(uniqueID_user)
        const add_address = JSON.parse(localStorage.getItem("add_address")) || [];
        const useraddress = add_address.filter((data) => data.uniqueID_user == uniqueID_user);
        console.log(useraddress);



            function loadAddress(){


        const defaultAdd = useraddress.find(x => x.default == true);
        console.log(defaultAdd);

        let defIndex = -1;
        for(let i=0; i < useraddress.length ; i++){
            if(add_address[i].default === true){
                defIndex = i;
                }
            }
        console.log(defIndex);

                document.querySelector(".etho").innerHTML = "";
                for (let i = 0; i < add_address.length; i++) {
           

           const div_card = document.createElement("div");
           div_card.setAttribute("class", "card");

           const div_name = document.createElement("div");
           div_name.setAttribute("class", "name");
           div_card.append(div_name);

           const h3 = document.createElement("h3");
           h3.innerText = add_address[i].name;
           div_name.append(h3);

           const div_details = document.createElement("div");
           div_details.setAttribute("class", "details");
           div_card.append(div_details);

           const p_1 = document.createElement("p");
           p_1.innerText = add_address[i].street;
           div_details.append(p_1);

           const p_2 = document.createElement("p");
           p_2.innerText = add_address[i].town;
           div_details.append(p_2);

           const p_3 = document.createElement("p");
           p_3.innerText = add_address[i].country + "  " + add_address[i].zip;
           div_details.append(p_3);

           const p_4 = document.createElement("p");
           p_4.innerText = "India";
           div_details.append(p_4);

           const p_5 = document.createElement("p");
           p_5.innerText = "+91 " + add_address[i].phone;
           div_details.append(p_5);

           const div_buttons = document.createElement("div");
           div_buttons.setAttribute("class", "but");
           div_card.append(div_buttons);

           const buttonEdit = document.createElement("button");
           buttonEdit.setAttribute("class", "edit");
           buttonEdit.setAttribute("data-id",add_address[i].address_uuid);
           buttonEdit.innerText = "Edit";
           div_buttons.append(buttonEdit);


           const buttonRemove = document.createElement("button");
           buttonRemove.setAttribute("class", "delete");
           buttonRemove.setAttribute("data-id",add_address[i].address_uuid);
           
           // buttonRemove.addEventListener("click", delData); // Attach the event listener
           buttonRemove.innerText = "Remove";
           div_buttons.append(buttonRemove);

           const div_default = document.createElement("div");
           div_default.setAttribute("class", "defa");
           div_card.append(div_default);
           const aDefault = document.createElement("button");
           aDefault.classList.add("def")
           if(i !== defIndex){
               aDefault.textContent  = " Set as default";
               aDefault.classList.add("secondary");
               aDefault.setAttribute("data-id",add_address[i].address_uuid);
           }
           else{
               aDefault.textContent  = "Default address";
           }
           div_default.append(aDefault);
           document.querySelector(".etho").append(div_card);

       }
            }

        loadAddress();
        
        document.querySelectorAll("button.edit").forEach((edit) => {
            edit.addEventListener("click", (e) => {
                let id = e.target.dataset.id
                window.location.href = `../profile page/addressedit.html?id=${id}`;
                console.log(id)
            })
        });

        document.querySelectorAll("button.secondary").forEach((edit) => {
            edit.addEventListener("click", (e) => {
                let id = e.target.dataset.id
                const defaultAdd = useraddress.find(x => x.default == true);
                const currentAdd = useraddress.find(x => x.address_uuid == id)
                console.log(defaultAdd);
                console.log(currentAdd);

                defaultAdd.default = false;
                currentAdd.default = true;

                localStorage.setItem("add_address", JSON.stringify(add_address));

                loadAddress();
                window.location.reload();
            });
        });

        document.querySelectorAll("button.delete").forEach((edit) => {
            edit.addEventListener("click", (e) => {
                let id = e.target.dataset.id;
                let index = add_address.findIndex((add) => add.address_uuid == id);
                console.log(index);
                if(index > -1){
                    add_address.splice(index,1);
                }
                localStorage.setItem("add_address", JSON.stringify(add_address));
                alert("Are You Sure?");
                window.location.reload();
            })
        });

        


        // function delData() {
        //     if (window.confirm("Are you sure?")) {
        //         const unique_id = localStorage.getItem("uniqueID_user");
        //         const add_address = JSON.parse(localStorage.getItem("add_address"));
        //         const indexOfUser = add_address.findIndex(function (e) {
        //             return e.address_uuid === unique_id;
        //         });

        //         if (indexOfUser !== -1) {
        //             add_address.splice(indexOfUser, 1);
        //             localStorage.setItem("add_address", JSON.stringify(add_address));
        //             window.location.href = "../profile page/profile page.html";
        //         }
        //     }
        // }

        // document.addEventListener("DOMContentLoaded", function () {
        //     const delButtons = document.querySelectorAll(".delete");
        //     delButtons.forEach(function (button) {
        //         button.addEventListener("click", delData);
        //     });
        // });


// function delData() {
//           if (window.confirm("Are you sure?")) {
//             const unique_id = JSON.parse(localStorage.getItem("uniqueID_user"));
//             const  add_address = JSON.parse(localStorage.getItem("add_address")); 
//             function findData(e) {
//                 return e.unique_id === unique_id;
//             }
//             const product_datas = product_list.find(findData);
//             const indexOfUser = product_list.indexOf(product_datas);

//             product_list.splice(indexOfUser, 1);
//             localStorage.setItem("product_crud", JSON.stringify(product));
//             window.location.href = "../seller products/seller product list.html";
//           }
//         }
//         const del_product = document.querySelector("button.delete_data");
//         del_product.addEventListener("click", delData);


//         buttonRemove.addEventListener("click", function () {
//   if (window.confirm("Are you sure?")) {
//     const unique_id = JSON.parse(localStorage.getItem("uniqueID_user"));
//     let add_address = JSON.parse(localStorage.getItem("add_address")); // Assign to a variable

//     const indexOfUser = add_address.findIndex((e) => e.address_uuid === unique_id);

//     if (indexOfUser !== -1) {
//       add_address.splice(indexOfUser, 1);
//       localStorage.setItem("add_address", JSON.stringify(add_address));
//       window.location.href = "../profile page/profile page.html";
//     }
//   }
// });





    </script>
    
</body>

</html>