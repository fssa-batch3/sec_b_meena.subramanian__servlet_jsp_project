<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    
     <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/seller login.css">
</head>
<body>

  <section class="total">
            <section class="sell">
                <h1 style="font-size: 40px;"> Welcome To Login</h1>
                <div class="content">
                    <p>
                        Buy your dream sarees and dothi<br> 24 hours a day. 7 day a week.
                    </p>
                </div>
                <form role="form" action="<%=request.getContextPath()%>/user/login" method="post" id="signIn">

                    <div class="mail">
                        <input type="email" name="email" id="email" placeholder="email" value="vasumeena2004@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
                    </div>
                    <div class="password">
                        <input type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  value="Meena@2343" placeholder="password" required>
                    </div>
                    <p style="font-size: 13px;"> Pattern : Minimum 8 characters include Uppercase,<br>  Lowercase, Number and Special characters. </p>
                    <div class="forget">
                        <a href="#" style="color: rgb(71, 159, 118);">Forget Password</a>
                    </div>


                    <button class="sign" type="submit">
                        <b style="color: black;">Sign In</b>
                    </button> 
  
                    <div class="regis">
                        <p>
                            Don't have a account?<a href="<%=request.getContextPath()%>/user/new" style="color: rgb(71, 159, 118);">Create New</a>
                        </p>
                    </div>
                </form>

            </section>
            <section class="img">
                <img src="<%=request.getContextPath() %>/assets/img/Ecommerce web page-rafiki.png" alt="image" width="650px" height="650px">
            </section>
            
            
</body>
</html>
