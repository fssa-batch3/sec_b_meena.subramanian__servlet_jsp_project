<!DOCTYPE html>
<%@page import="in.fssa.kaithari.model.Seller"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile Page</title>

        <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/profile page.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
            rel="stylesheet">

    </head>

    <body>

        <header>
            <div class="logo">
                <a href="<%=request.getContextPath() %>/index.jsp">
                    <img src="<%=request.getContextPath() %>/assets/img/image-removebg-preview.png" alt="logo" width="100px"
                        height="80px"></a>
            </div>

            <h2>YOUR PROFILE</h2>

            <div class="navigations">

                <div class="accound">
                    <a href="<%=request.getContextPath() %>/list_all_products">
                        <button class="but">GO TO MY PRODUCT
                            ></button></a>
                </div>

            </div>
        </header>
<% 
  Seller seller = (Seller) request.getAttribute("sellerDetails");

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
                    <p class="list" id="name" name="name"> <%= seller.getName() %> </p>
                </div>
                <div class="details_list">
                    <!-- <p class="list">Contact:</p> -->
                    <p class="list_1" name="mobile_number" id="phone"><%= seller.getMobileNumber() %>   </p>
                </div>

                <div class="details_list">
                    <!-- <p class="list">Email:</p> -->
                    <p class="list_2" id="email"> <%= seller.getEmail() %> </p>
                </div>

				<div class="details_list"> 
                <!-- <p class="list">District:</p> -->
                <p class="list_4" name="address" id="address"><%= seller.getAddress() %> </p>
                    </div> 
                    <div class="details_list">
                    <!-- <p class="list">Address:</p> -->
                    <p class="list_4" name="village" id="Village"><%= seller.getVillage() %>,<%= seller.getPincode() %></p>
                </div>
                <div class="details_list">
                    <!-- <p class="list">Address:</p> -->
                    <p class="list_4" name="district" id="district"><%= seller.getDistrict()%> </p>
                </div>
            </div>
            <div class="buttons">
                <a href="/seller/logout">
                    <button type="submit" class="log">
                        <strong>LOG OUT</strong>
                    </button>
                </a>

                <button id="add" class="address">
                    <strong>
                       <a href="/kaithariweb/seller/profile_edit">Edit Profile</a></strong>
                </button>

            </div>
        </div>
    </section>

        <!-- <script>
            const user_email  = localStorage.getItem("user_email");
            console.log(user_email)

            document.getElementById("user_email").innerText =user_email

            </script> -->

        <!-- <script>
        const uniqueID_seller = JSON.parse(localStorage.getItem("uniqueID_seller"));
        const seller_cred = JSON.parse(localStorage.getItem("seller_cred"));

        const seller = seller_cred.find((user) => user.email === uniqueID_seller);
        // console.log(seller);

        document.getElementById("name").innerText = seller.name;
        document.getElementById("email").innerText = seller.email;
        document.getElementById("phone").innerText = seller.phone;
        document.getElementById("dob").innerText = seller.dob;
        document.getElementById("address").innerText = seller.address;
        document.getElementById("district").innerText = seller.district;

        // logout function
        function logOut() {
          if (window.confirm("Are you going to Logout ?")) {
            // deleting the unique_id of person data
            localStorage.removeItem("uniqueID_seller");
            alert("Sucessfully Logged out!");
          }
          window.location.href = "../seller products/seller home.jsp";
        }
    </script> -->
  
    </body>

</html>