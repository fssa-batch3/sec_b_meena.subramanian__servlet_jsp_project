<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Buyer Register </title>

        <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/register.css">
</head>
<body>

 <section class="new">
            <section class="total">
                <p> Start For Free</p>
                <h1>Create New Account</h1>
                <form action="create" method="post">
                    <div class="name" style="margin-top: 30px;">

                        <input type="text" name="name" id="name" placeholder="Name" value="Meena" pattern="[a-zA-Z0-9]+" required>
                    </div>

                    <div class="mail" style="margin-top: 15px;">

                        <input type="email" name = "email" placeholder="Email" id="email"
                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" value="vasumeena2004@gmail.com" required>
                    </div>

                    <div class="pass" style="margin-top: 15px;">

                        <input type="password" name = "password" id="password" placeholder="Password" value="Meena@2343" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                            required>
                    </div>

                    <div class="pass" style="margin-top: 15px;">

                        <input type="password" name = "confirm_password" id="confirm_password" class="passs" value="Meena@2343" placeholder="Confirm Password" required>
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