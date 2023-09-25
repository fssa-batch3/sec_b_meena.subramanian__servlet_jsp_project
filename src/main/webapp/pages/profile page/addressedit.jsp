<!DOCTYPE html>
<%@page import="in.fssa.kaithari.model.User"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address Edit Page</title>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/address from.css">
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
<%
User user = (User) request.getAttribute("editAddress");
%>
    <div class="h1">
        <h1 class="heading"> Edit Your Address </h1>
    </div>
    <form action="update" method="POST">
        <!-- <div class="total"> -->
        <div class="form-group">
            <input type="text" class="form-control"  name = "name" id="inputName" value = "<%=user.getName() %>" pattern="^[A-Za-z]+(\\s[A-Za-z]+)*$" placeholder="Name" required>

            <input type="text" class="form-control" name = "address"  id="inputStreet" value = "<%=user.getAddress() %>" placeholder="Street" required>

            <input type="text" class="form-control" name = "village"  id="inputCity"  value = "<%=user.getVillage() %>"placeholder="Town" required>

            <input type="number" class="form-control" name = "pincode"  id="inputZip"  value = "<%=user.getPincode()%>"placeholder="Pincode" required>

            <input type="text" class="form-control" name = "district"  id="inputCountry"  value = "<%=user.getDistrict()%>"pattern="[a-zA-Z]+" placeholder="city"
                required>

            <input type="number" class="form-control" name = "mobile_number"  id="inputPhone" value = "<%=user.getMobileNumber()%>" placeholder="Mobile Number" required>

            <div class="butt">
                <button type="submit" class="Save">Save Your Address</button>
            </div>

        </div>
</form>

        <!-- <div class="image">
                <input type="number" class="form-control" id="inputPhone" placeholder="Mobile Number" required>
                <input type="state" class="form-control" id="inputState" placeholder="State" required>
                <input type="country" class="form-control" id="inputCountry" placeholder="Country" required>
            </div> -->

        <!-- </div> -->

       </body>

</html>