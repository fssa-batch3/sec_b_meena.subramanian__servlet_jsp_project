<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address Page</title>

    <link rel="stylesheet" href="<%= request.getContextPath()%>/assets/css/address from.css">
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
    <div class="h1">
        <h1 class="heading"> Add Your Address </h1>
    </div>
    <form>
        <!-- <div class="total"> -->
        <div class="form-group">
            <input type="text" class="form-control" id="inputName" value="Meena" pattern="[a-zA-Z0-9]+"
                placeholder="Name" required>

            <input type="text" class="form-control" id="inputStreet" value="32/21,bajanai madam street"
                pattern="[a-zA-Z0-9]+" placeholder="Street" required>

            <input type="text" class="form-control" id="inputCity" value="Veeravanallur" pattern="[a-zA-Z0-9]+"
                placeholder="Town" required>

            <input type="number" class="form-control" id="inputZip" placeholder="Pincode" value="627426" required>

            <input type="text" class="form-control" id="inputCountry" value="Thirunelveli" pattern="[a-zA-Z0-9]+"
                placeholder="city" required>

            <input type="tel" class="form-control" id="inputPhone" placeholder="Mobile Number" value="6574839209"
                pattern="[0-9]{,10}" required>

            <div class="butt">
                <button type="submit" class="Save" onclick="/user/profile">Save Your Address</button>
            </div>

        </div>


        <!-- <div class="image">
                <input type="number" class="form-control" id="inputPhone" placeholder="Mobile Number" required>
                <input type="state" class="form-control" id="inputState" placeholder="State" required>
                <input type="country" class="form-control" id="inputCountry" placeholder="Country" required>
            </div> -->

        <!-- </div> -->

        <script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>
        <script>
            
            const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));
            console.log(uniqueID_user)
            const add_address = JSON.parse(localStorage.getItem("add_address")) || [];

            const useraddress = add_address.filter((data) => data.uniqueID_user == uniqueID_user);
            console.log(useraddress);

            const defaultAdd = useraddress.find(x => x.default == true);
            console.log(defaultAdd);

            let defIndex = -1;
            for (let i = 0; i < useraddress.length; i++) {
                if (add_address[i].default === true) {
                    defIndex = i;
                }
            }
            console.log(defIndex);

            function address_data(e) {
                return e.uniqueID_user === uniqueID_user;
            }
            function addAddress(e) {
                e.preventDefault();
                const street = document.getElementById("inputStreet").value;
                const town = document.getElementById("inputCity").value;
                const name = document.getElementById("inputName").value;
                const zip = document.getElementById("inputZip").value;
                const country = document.getElementById("inputCountry").value;
                const phone = document.getElementById("inputPhone").value
                const address_uuid = uuidv4();
                const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));
                const add_address = JSON.parse(localStorage.getItem("add_address")) || [];

                const status = !defaultAdd ? true : false;

                let addObj = {
                    street,
                    town,
                    name,
                    zip,
                    country,
                    uniqueID_user,
                    address_uuid,
                    default: status,
                    phone,
                }

                add_address.push(addObj);

                localStorage.setItem("add_address", JSON.stringify(add_address));
                alert("Your address saved");
                window.location.href = "../profile page/youraddress.jsp";
            }



        // alert("Your address edited");
        // window.location.href = "../profile page/your";
        </script>
</body>

</html>