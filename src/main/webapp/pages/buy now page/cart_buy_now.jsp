<%@page import="in.fssa.kaithari.model.User"%>
<%@page import="in.fssa.kaithari.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Now Details</title>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/cart_buy_now.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
         <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js"> </script>

</head>
<body>

<header>
<jsp:include page="/header.jsp" />
</header>

<%
	String error = (String) request.getAttribute("errorMessage");
	if (error != null && !("".equals(error))) {
	%>
	<script>
		Notify.error(
		`<%=error%>
		`);
	</script>

	<%
	}
	%>
	
<% HttpSession session3 = request.getSession(); %>
<% Integer userId = (Integer) session3.getAttribute("userId"); 

int user_id = userId.intValue();

UserService userSerice = new UserService();
User user1 = userSerice.findById(user_id);


%>
	

	<div class="total">
	
	   <div class="left">
                                                           
            </div>
          
    <form class ="right">
    <p id="stock_alert" style="color:red;"></p>
                <h2 class="pers"> PERSONAL DETAILS </h2>

                <div class="form_list">
                        <div class="form">
                            <label> Name:</label>
                        </div>
                        <div class="form_input">
                            <input class="name" name="name" value ="<%= user1.getName() %>" type="text" id="username" placeholder="name" required="true">
                        </div>
                    </div> 
                <div class="form_list">
                        <div class="form">
                            <label> Address: </label>
                        </div>
                        <div class="form_input">
                            <input type="text" name="address" id="address" value = "<%= user1.getAddress() %>" required="true" placeholder="32/27 street,veeravanalur">
                            <br>
                            <input type="text" name="village"  id="village" value = "<%= user1.getVillage() %>"  required="true" placeholder="veeravanallur">
                            <br>
                            <input class="c2"  name="pincode" type="text" value ="<%= user1.getPincode() %>"  id="pincode" placeholder="Pincode" required="true">
                            <br>
                            <input type="text" name="district"  id="district" value = "<%= user1.getDistrict() %>"  required="true" placeholder="Tirunelveli">
                            
                        </div>
                    </div> 

                 <div class="form_list">
                        <div class="form">
                            <label> Mobile number:</label>
                        </div>
                        <div class="form_input">
                            <input type="tel" name="mobile_number" value ="<%= user1.getMobileNumber() %>"  pattern="[6-9]{1}[0-9]{9}" id="phone" placeholder="+919876543201" required>
                        </div>
                    </div> 
                     <div class="amt" style = "margin-top:30px; margin-left:85px;">
        Total amount : <span id="amt"> </span>
        </div>  
                <div class="cash">
                    <p class="payment"> Payment Method: </p>
                    <div class="radio">
                        <label> Cash On Delivery </label>
                    </div>
                </div>

               
                    <button class="place" type="submit" id="PlaceOrder_bn">
                        <b> PLACE ORDER </b>
                    </button>
            </div>
        </form>
        
        <!-- <div class="amt" style = "margin-top:30px; margin-left:85px;">
        Total amount : <span id="amt"> </span>
        </div>  -->         
 
    <script>
    
    const add_to_cart = JSON.parse(localStorage.getItem("cart"));
    
    let user_id1 = <%= user_id %>;
    
    const check_pdt = add_to_cart.filter((e) => e.user_id == user_id1);

    console.log(check_pdt);

    
    for (let i = 0; i < check_pdt.length; i++) {

    // <div>

    const div = document.createElement("div");
    div.setAttribute("class", "image");
    // console.log(div);

    // <img>

    const img = document.createElement("img");
    img.setAttribute("src", check_pdt[i].product_image);
    img.setAttribute("alt", check_pdt[i].product_name);
    img.setAttribute("height", "150px");
    img.setAttribute("width", "150px");
    img.setAttribute("id", "image");
    div.append(img);

    const div_details = document.createElement("div");
    div_details.setAttribute("class", "details");
    div.append(div_details);

    const h3 = document.createElement("h3");
    h3.innerText = check_pdt[i].product_name;
    div_details.append(h3);

    const p = document.createElement("p");
    p.innerText = " Rs : " + check_pdt[i].current_price;
    div_details.append(p);

    const s = document.createElement("s");
    s.innerText = " Rs : " + check_pdt[i].actual_price ;
    p.append(s);

    const b = document.createElement("b");
    b.innerText = " "+check_pdt[i].discount+ "%";
    p.append(b);

    const p_qty = document.createElement("p");
    p_qty.setAttribute("class", "qty");
    p_qty.innerText = "Quantity : " + check_pdt[i].product_quantity;
    p.append(p_qty);

    const total = document.createElement("p");
    total.setAttribute("class", "tot");
    total.innerText = "Total amount : " + check_pdt[i].current_price * check_pdt[i].product_quantity;
    p.append(total);

    document.querySelector(".left").append(div);

    // total amount
    let total_amt = 0;

    for (let l = 0; l < check_pdt.length; l++) {
        total_amt += check_pdt[l].current_price * check_pdt[l].product_quantity;
    }
    console.log(total_amt);

    document.getElementById("amt").innerText =  total_amt;
}

/////   buy now post 


    document.querySelector("button.place").addEventListener("click",(e) => {
   	 e.preventDefault();

   	let pdts = JSON.parse(localStorage.getItem("cart"));
   	console.log(pdts);
   	
   	const name = document.getElementById("username").value;
   	const address = document.getElementById("address").value;
   	const pincode = document.getElementById("pincode").value;
   	const village = document.getElementById("village").value;
   	const district = document.getElementById("district").value;
   	const phone = document.getElementById("phone").value;
   	
   	const data = {"cart":pdts,"name":name, "address":address, "pincode":pincode, "village":village, "district":district, "phone":phone};

   	  axios.post("http://localhost:8080/kaithariweb/cart_buy_now_servlet", data)
   	    .then(function (response) {
   	      // handle success
   	      console.log(response.data);
   	      const serverMsg = response.data;
   	      if (serverMsg.trim() == 'success') {
   	        console.log("Successfully Registered");
   	        
   	      } else {
   	        console.log("server msg " + serverMsg);
   	      }
   	    })
   	    .catch(function (error) {
   	      // handle error
   	      console.log("error " + error);
   	    });
   	  
   	 window.location.href="http://localhost:8080/kaithariweb/index.jsp";
   	  
   	pdts = "";
   	  
   	  localStorage.setItem("cart", JSON.stringify(pdts));

    } );



   </script>

   <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    
</body>
</html>