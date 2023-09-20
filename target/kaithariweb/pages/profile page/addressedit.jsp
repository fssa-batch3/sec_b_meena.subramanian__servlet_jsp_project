<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address Edit Page</title>

    <link rel="stylesheet" href="/assets/css/address from.css">
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
        <h1 class="heading"> Edit Your Address </h1>
    </div>
    <form>
        <!-- <div class="total"> -->
        <div class="form-group">
            <input type="text" class="form-control" id="inputName" pattern="[a-zA-Z0-9]+" placeholder="Name" required>

            <input type="text" class="form-control" id="inputStreet" placeholder="Street" required>

            <input type="text" class="form-control" id="inputCity" placeholder="Town" required>

            <input type="number" class="form-control" id="inputZip" placeholder="Pincode" required>

            <input type="text" class="form-control" id="inputCountry" pattern="[a-zA-Z0-9]+" placeholder="city"
                required>

            <input type="number" class="form-control" id="inputPhone" placeholder="Mobile Number" required>

            <div class="butt">
                <button type="submit" class="Save" onclick="update_address(event)">Save Your Address</button>
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

            const params = new URLSearchParams(window.location.search);
            let id = params.get("id");


            const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));
            const add_address = JSON.parse(localStorage.getItem("add_address"));
            const address = add_address.find(e => e.address_uuid == id);

            console.log(address);

            console.log(id)

            document.getElementById("inputStreet").value = address.street;
            document.getElementById("inputCity").value = address.town;
            document.getElementById("inputName").value = address.name;
            document.getElementById("inputZip").value = address.zip;
            document.getElementById("inputCountry").value = address.country;
            document.getElementById("inputPhone").value = address.phone;

            function update_address(e) {
                e.preventDefault();

                const street = document.getElementById("inputStreet").value;
                const city = document.getElementById("inputCity").value;
                const name = document.getElementById("inputName").value;
                const zip = document.getElementById("inputZip").value;
                const country = document.getElementById("inputCountry").value;
                const phone = document.getElementById("inputPhone").value;

                address.street = street;
                address.town = city;
                address.name = name;
                address.zip = zip;
                address.country = country;
                address.phone = phone;

                localStorage.setItem("add_address", JSON.stringify(add_address));
                alert("Your address has been updated.");
                window.location.href = "../profile page/youraddress.jsp";
            }


        </script>
</body>

</html>