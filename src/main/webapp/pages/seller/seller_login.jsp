<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Seller</title>

        <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/seller login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

    </head>

    <body>

        <header>
            <div class="logo">
                <a href="<%=request.getContextPath() %>/index.jsp">
                    <img src="<%=request.getContextPath() %>/assets/img/image-removebg-preview.png" alt="logo" width="100px" height="80px">
                </a>
            </div>


</div>
        </header>

        <section class="total">
            <section class="sell">
                <h1 style="font-size: 40px;"> Welcome To Seller Panel</h1>
                <div class="content">
                    <p>
                        Sell nationwide to millions customers<br> 24 hours a day. 7 day a week.
                    </p>
                </div>
                <form role="form" action="<%=request.getContextPath() %>/pages/seller/login" method="post" id="signIn">

                    <div class="mail">
                        <input type="email" name = "email" id="email" placeholder="email" value="vasumeena2004@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
                    </div>
                    <div class="password">
                        <input type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" value="Meenu@2343" placeholder="password" required>
                    </div>
                    <p style="font-size: 13px;"> Pattern : Minimum 8 characters include Uppercase,<br>  Lowercase, Number and Special characters. </p>
                    <!-- <div class="forget">
                        <a href="#" style="color: rgb(71, 159, 118);">Forget Password</a>
                    </div>
 -->
                    <button class="sign" type="submit">
                        <b style="color: black;">Sign In</b>
                    </button>
 
                    <div class="regis">
                        <p>
                            Don't have a account?<a href="<%= request.getContextPath() %>/pages/seller/new" style="color: rgb(71, 159, 118);">Register Now</a>
                        </p>
                    </div>
                </form>

            </section>

            <section class="img">
                <img src="<%= request.getContextPath() %>/assets/img/Ecommerce web page-rafiki.png" alt="image" width="650px" height="650px">
            </section>
        </section>



    </body>
</html>