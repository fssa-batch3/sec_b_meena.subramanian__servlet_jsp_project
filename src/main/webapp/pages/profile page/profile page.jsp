<!DOCTYPE html>
<%@page import="in.fssa.kaithari.model.User"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/profile page.css">
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

    <!-- <div class="v3_3"> -->
    <!-- <div class="v3_13"></div> -->
    <!-- <div class="v5_24"></div>
        <div class="v5_32"></div>
        <div class="v5_33"></div>
        <div class="v5_34"></div><span class="v5_31">Favourites</span>
        <div class="v3_11">
            <img src="../../assets/img/IMG_9315.jpg">
        </div>
        <div class="v5_41">
            <div class="v5_22"><span class="v3_15">MYNA MEENA</span><span class="v3_16">mynameena@gamil.com | +91 63745
                    63950</span><span class="v3_18">Perungudi Chennai 600003</span></div>
            <div class="v5_40"><span class="v5_36">Edit Profile</span></div>
        </div>
    </div>
 -->

<% 
  User user = (User) request.getAttribute("userDetails");
%>


    <section class="profile_details">
        <div class="form">
            <h1 class="heading"> PROFILE </h1>
            <div class="profile">
                <img class="profile_img" src="<%=request.getContextPath() %>/assets/img/profile.png" alt="photo" width="180px">
            </div>
            <div class="details">
                <div class="details_list">
                    <!-- <p class="list">Name:</p> -->
                    <p class="list" id="name" name="name"> <%= user.getName() %> </p>
                </div>
                <div class="details_list">
                    <!-- <p class="list">Contact:</p> -->
                    <p class="list_1" id="phone"><%= user.getMobileNumber() %>   </p>
                </div>

                <div class="details_list">
                    <!-- <p class="list">Email:</p> -->
                    <p class="list_2" id="email"> <%= user.getEmail() %> </p>
                </div>

				<div class="details_list"> 
                <!-- <p class="list">District:</p> -->
                <p class="list_4" id="address"><%= user.getAddress() %> </p>
                    </div> 
                    <div class="details_list">
                    <!-- <p class="list">Address:</p> -->
                    <p class="list_4" id="Village"><%= user.getVillage() %>,<%= user.getPincode() %></p>
                </div>
                <div class="details_list">
                    <!-- <p class="list">Address:</p> -->
                    <p class="list_4" id="district"><%= user.getDistrict()%> </p>
                </div>
            </div>
            <div class="buttons">
                <a href="/kaithariweb/user/logout">
                    <button type="submit" class="log">
                        <strong>LOG OUT</strong>
                    </button>
                </a>

                <button id="add" class="address">
                    <strong>
                       <a href="/kaithariweb/address/edit">Edit Profile</a></strong>
                </button>

            </div>
        </div>
    </section>


   <!--  <div class="modal d-none" id="myform">
        <form>
            <h1>Edit Your Profile</h1>
            <div class="popup">
                <input type="text" id="modalname" placeholder="Name" class="name">
                <input id="modalemail" type="email" class="email" placeholder="email">
                <input type="submit" class="submit" />
            </div>
        </form>
    </div> -->


    <%-- <script>
        const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));
        console.log(uniqueID_user);

        const add_address = JSON.parse(localStorage.getItem("add_address")) || [];
        console.log(add_address);

       const user_address=add_address.filter((e)=>e.uniqueID_user===uniqueID_user)


       if(user_address.length>0){

     
        const defaultAdd = user_address.find(x => x.default === true);
        console.log(defaultAdd);


        let address = defaultAdd.town + " " + defaultAdd.country + " " + defaultAdd.zip;
        console.log(address);

        document.getElementById("phone").innerHTML = "+91 " + defaultAdd.phone;
        document.getElementById("district").innerHTML = address;
        const area = defaultAdd.town;
    }

        const user_cred=JSON.parse(localStorage.getItem("user_cred"));

        const loggedUser = user_cred.find(x => x.email === uniqueID_user);
        console.log(loggedUser);

        document.getElementById("name").innerHTML = loggedUser.name;
        document.getElementById("email").innerHTML = loggedUser.email;
      
        

      


        // let defIndex = -1;
        // for (let i = 0; i < useraddress.length; i++) {
        //     if (add_address[i].default === true) {
        //         defIndex = i;
        //     }
        // }
        // console.log(defIndex);


        // logout function
        function logOut() {
            if (window.confirm("Are you going to Logout ?")) {
                // deleting the unique_id of person data
                localStorage.removeItem("uniqueID_user");
                alert("Sucessfully Logged out!");
            }
            window.location.href = "<%=request.getContextPath() %>/index.jsp";
        }

     



        const modal = document.getElementById("myform");
        const profileDiv = document.querySelector(".form");
        console.log(profileDiv);
        console.log(modal);
        const editbtn = document.querySelector(".edit-btn");
        const submit = document.querySelector(".submit");
        console.log(editbtn);
        editbtn.addEventListener("click", () => {
            modal.classList.remove("d-none");
            profileDiv.classList.add("d-none");

            document.getElementById("modalname").value = person_data.name;

            document.getElementById("modalemail").value = person_data.email;

        });
        submit.addEventListener("click", () => {
            loggedUser.name = document.getElementById("modalname").value.trim();
            loggedUser.email = document.getElementById("modalemail").value.trim()
            localStorage.setItem("user_cred", JSON.stringify(user_cred));
            modal.classList.add("d-none");
            profileDiv.classList.remove("d-none");
        });


        function profile_data(e) {
            return e.email === uniqueID_user;
        }
        const person_data = user_cred.find(profile_data);




         function edit() {
            document.getElementById("myform").style.display = "none";
         }
    </script>
 --%>
</body>

</html>