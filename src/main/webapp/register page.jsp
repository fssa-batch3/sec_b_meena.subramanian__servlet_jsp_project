<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Buyer Register </title>

        <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/register.css">
        <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
</script>
</head>
<body>
<%-- <%
	String error = (String) request.getAttribute("errorMessage");
	if (error != null && !("".equals(error))) {
	%>
	<script>
		Notify.error(
		`<%=error%>
		`);
	</script>
	<%
	} else {
	%>
	<script>
        Notify.error("please fill the details");
    </script>
	<%
	}
	%> --%>

<section class="new">
            <section class="total">
                <p> Start For Free</p>
                <h1>Create New Account</h1>
                <form action="create" method="post">
                    <div class="name" style="margin-top: 30px;">

                        <input type="text" name="name" id="name" placeholder="Name"  required>
                    </div>
                     <div class="mail" style="margin-top: 15px;">

                        <input type="email" name = "email" placeholder="Email" id="email"
                            required>
                    </div>
                     <div class="mobile_number" style="margin-top: 30px;">

                        <input type="number" name="mobile_number" class="number_in" id="name" placeholder="Mobile Number"  pattern="[6-9][1][0-9]{9}" required>
                    </div>
                      <div class="address" style="margin-top: 30px;">

                        <input type="text" name="address" id="name" placeholder="32/21,Bajanai Madam Street"  pattern="[A-Za-z0-9\s,/-]+" required>
                    </div>
                    
                    <div class="district" style="margin-top: 30px;">

                        <input type="text" name="district" id="name" placeholder="District" pattern="[a-zA-Z0-9]+" required>
                    </div>
                    
                    <div class="village" style="margin-top: 30px;">

                        <input type="text" name="village" id="name" placeholder="Village"  pattern="[a-zA-Z0-9]+" required>
                    </div>

                    <div class="pincode" style="margin-top: 30px;">

                        <input type="number" name="pincode" id="name" class="number_in" placeholder="Pincode"  pattern="[0-9]+" required>
                    </div>

                    <div class="pass" style="margin-top: 15px;">

                        <input type="password" name = "password" id="password" placeholder="Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                            required>
                    </div>

                    <div class="pass" style="margin-top: 15px;">

                        <input type="password" name = "confirm_password" id="confirm_password" class="passs"  placeholder="Confirm Password" required>
                    </div>
                    <p style="font-size: 13px;"> Pattern : Minimum 8 characters include Uppercase,<br>  Lowercase, Number and Special characters. </p>
                    <button class="submit" type="submit">
                        <b>Submit</b>
                    </button>

                    <div class="log">
                        <p>
                            You already have a account<a href="<%=request.getContextPath() %>/user/login" style="color: rgb(71, 159, 118);text-decoration: underline;">Login</a>
                        </p>
                    </div>
                </form>

            </section>

            <section class="img">
                <img src="<%=request.getContextPath()%>/assets/img/Untitled-removebg-preview.png" alt="img">
            </section>

        </section>
 

</body>
</html>