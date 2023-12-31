<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>

        <link rel="stylesheet" href="../../assets/css/seller home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

    </head>

    <body>

        <header>
            <div class="logo">
                <a href="<%=request.getContextPath()%>/index.jsp">
                    <img src="<%=request.getContextPath()%>/assets/img/image-removebg-preview.png" alt="logo" width="100px" height="80px">
                </a>
            </div>
   
            <div class="navigations">
            
            </div>
        </header>
        
        <% Integer sell=(Integer) request.getSession().getAttribute("sellerId");%>

        <section class="all">

            <div class="content">   
                <h1>Welcome to Seller</h1>
                <p class="er">
                    Trust and hight quality Service form<br> Best Seller
                </p>
                <p class="content-1">
                    The term seller refers to a party that offers a good, service, or asset in return for payment. A seller can be an individual, corporation, government, or any other entity. In financial markets, a seller is a party that offers an asset they own or hold for purchase by someone else.</p>
                <div class="btn">
                    <a href="<%= request.getContextPath() %>/<%= (sell == null) ? "pages/seller/login" : "list_all_products" %>">
                        <button>
                            <b style="color:white;v">Continue....</b>
                        </button>
                    </a>
                </div>
            </div>

            <div class="home">
                <img src="<%=request.getContextPath()%>/assets/img/seller home.webp" alt="photo">
               
            </div>
    
        </section>
        
      <!--   <script>
    function already() {
  const uniqueID = localStorage.getItem("uniqueID_seller");
  if (uniqueID) {
    window.location.href = "../seller products/seller product list.jsp";
  } else {
    window.location.href = "../seller/seller login.jsp";
  }
}
</script> -->

    </body>
</html>
