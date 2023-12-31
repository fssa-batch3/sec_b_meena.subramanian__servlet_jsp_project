<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Seller Register</title>

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/seller register.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<!-- <script src="../../JS/default_products.js"></script> -->

</head>

<body>

	<section class="new">
		<section class="total">
			<p>Start For Free</p>
			<h1>Create New Account</h1>
			<form role="form" action="<%=request.getContextPath()%>/seller/create" method="post">
				<div class="name" style="margin-top: 30px;">

					<input type="text" name="name" id="name" placeholder="Name"
						pattern="^[A-Za-z]+(\\s[A-Za-z]+)*$" value="Meena" required>
				</div>

				<div class="mail" style="margin-top: 15px;">

					<input type="email" name="email"
						placeholder="abcd@13u824.gmail.com" id="email"
						value="vasumeena2004@gmail.com"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
				</div>

				<div class="mobile_number" style="margin-top: 30px;">

					<input type="number" name="mobile_number" class="number_in"
						id="name" placeholder="Mobile Number" pattern="[0-9]{,10}"
						required>
				</div>
				<div class="address" style="margin-top: 30px;">

					<input type="text" name="address" id="name"
						placeholder="32/21,Bajanai Madam Street"
						pattern="[A-Za-z0-9\s,/-]+" required>
				</div>

				<div class="district" style="margin-top: 30px;">

					<input type="text" name="district" id="name" placeholder="District"
						pattern="[a-zA-Z0-9]+" required>
				</div>

				<div class="village" style="margin-top: 30px;">

					<input type="text" name="village" id="name" placeholder="Village"
						pattern="[a-zA-Z0-9]+" required>
				</div>

				<div class="pincode" style="margin-top: 30px;">

					<input type="number" name="pincode" id="name" class="number_in"
						placeholder="Pincode" pattern="[0-9]+" required>
				</div>

				<div class="photo" style="margin-top: 15px;">
					<label>Click Here Choose Your ID CARD Image</label> <input
						type="file" name="proof_image" class="Weaving"
						id="card_img_upload"> <img src="" id="imgBox2"
						style="display: none;" alt=""> <img class="check_img"
						src="../../assets/img/icon/grey_style.gif" style="display: none;"
						width="30px" height="30px" id="card_load" alt=""> <img
						class="check_img2" src="../../assets/img/icon/check-mark.png"
						style="display: none;" width="20px" height="20px" id="card_check"
						alt="">


				</div>

				<div class="photo" style="margin-top: 15px;">
					<label>Click Here Choose Your Weaving Image</label> <input
						type="file" name="id_image" class="Weaving" id="photo_img_upload">


					<img class="check_img" src="<%=request.getContextPath() %>/assets/img/icon/grey_style.gif"
						style="display: none;" width="30px" height="30px" id="photo_load"
						alt=""> <img class="check_img2"
						src="<%=request.getContextPath() %>/assets/img/icon/check-mark.png" style="display: none;"
						width="20px" height="20px" id="photo_check" alt="">

				</div>

				<div class="pass" style="margin-top: 15px;">

					<input type="password" name="password" id="password"
						placeholder="Password" value="Meenu@2343"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required>
				</div>

				<div class="pass" style="margin-top: 15px;">

					<input type="password" name="confirm_password"
						id="confirm_password" class="passs" value="Meenu@2343"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Confirm Password" required>
				</div>
				<p style="font-size: 13px;">
					Pattern : Minimum 8 characters include Uppercase,<br>
					Lowercase, Number and Special characters.
				</p>
				<button class="submit" type="submit">
					<b>Submit</b>
				</button>
				<div class="log">
					<p>
						you already have a account<a
							href="<%=request.getContextPath()%>/pages/seller/seller_login.jsp" style="color: rgb(71, 159, 118);">Login</a>
					</p>
				</div>
				<!-- <a onclick="loginpage()" style="color:black;"><button class="login"><b>login</b></button></a> -->

			</form>

		</section>

		<section class="img">
			<img
				src="<%=request.getContextPath()%>/assets/img/Untitled-removebg-preview.png"
				alt="img">
		</section>

	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>
	<script>

              //  API for store image in cloud
// post image Upload API
const CLOUDINARY_URL = "https://api.cloudinary.com/v1_1/dvb2bkrx9/upload";
const CLOUDINARY_UPLOAD_PRESET = "sk3iuzma";
// const img_pre_div = document.getElementById("img_pre_div");
const imgPreview = document.getElementById("imgBox2");
const fileUpload = document.getElementById("card_img_upload");
let card_img = "";
fileUpload.addEventListener("change", function (event) {

document.getElementById("card_load").style.display="block";

   
  const file = event.target.files[0];
  const formData = new FormData();
  formData.append("file", file);
  formData.append("upload_preset", CLOUDINARY_UPLOAD_PRESET);
  axios({
    url: CLOUDINARY_URL,
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    data: formData,
  })
    .then(function (res) {
      console.log(res);
      imgPreview.src = res.data.secure_url;
      document.getElementById("card_load").style.display="none";
      document.getElementById("card_check").style.display="block";
      // Store the URL in localStorage
      card_img = res.data.secure_url;
      console.log(post_img);
    })
    .catch(function (err) {
      console.error(err);
    });
});

//  API for store image in cloud
// post image Upload API

// const img_pre_div = document.getElementById("img_pre_div");
// const photoimgPreview = document.getElementById("imgBox1");
const photofileUpload = document.getElementById("photo_img_upload");
let photo_card_img = "";
photofileUpload.addEventListener("change", function (event) {

document.getElementById("photo_load").style.display="block";

   
  const file = event.target.files[0];
  const formData = new FormData();
  formData.append("file", file);
  formData.append("upload_preset", CLOUDINARY_UPLOAD_PRESET);
  axios({
    url: CLOUDINARY_URL,
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    data: formData,
  })
    .then(function (res) {
      console.log(res);
      imgPreview.src = res.data.secure_url;
      document.getElementById("photo_load").style.display="none";
      document.getElementById("photo_check").style.display="block";
      // Store the URL in localStorage
      photo_card_img = res.data.secure_url;
      console.log(post_img);
    })
    .catch(function (err) {
      console.error(err);
    });
});




// function submit(){
//     const email = document.getElementById("email").value
//     const confirm_password = document.getElementById("confirm_password").value
//     const password = document.getElementById("password").value
//     const first_name = document.getElementById("first_name").value
//     const second_name = document.getElementById("second_name").value

//     console.log(email)
//     console.log(password)
//     console.log(first_name)
//     console.log(second_name)
//     console.log(confirm_password)

//     localStorage.setItem("user_email",email)
//     localStorage.setItem("user_pasword",password)
//     localStorage.setItem("user_confirm_password",confirm_password)
//     localStorage.setItem("user_name",first_name)

//     window.location.href = "../seller products/seller products.html"

// }

function signUp(e) {
  const email = document.getElementById("email").value;
  const confirm_password = document.getElementById("confirm_password").value;
  const password = document.getElementById("password").value;
  const name = document.getElementById("name").value;
  const Id_card = "card_photo";
  const weaving_pic = "img_photo"
  const seller_uuid = uuidv4();
  const seller_cred = JSON.parse(localStorage.getItem("seller_cred")) || [];

  const exist =
    seller_cred.length &&
    JSON.parse(localStorage.getItem("seller_cred")).some(
      (data) => data.email.toLowerCase() === email.toLowerCase()
    );
  if (!exist) {
    if (password === confirm_password) {
      seller_cred.push({
        name,
        email,
        confirm_password,
        password,
        seller_uuid,
        "Id_card":card_img,
        weaving_pic:photo_card_img
      });
      localStorage.setItem("seller_cred", JSON.stringify(seller_cred));
      console.log(localStorage.getItem("seller_cred"));
      document.querySelector("form").reset();
      document.getElementById("email").focus();
      alert("Account created successfully");
      window.location.href = "../seller/seller login.jsp";
    } else {
      alert("Confirm password does not match");
    }
  } else {
    alert("Sorry the User already exists! \n Try with a new Email.");
    document.querySelector("form").reset();
  }

  e.preventDefault();
}

function loginpage() {
  window.location.href = "../seller/seller login.jsp";
}
</script>








</body>
</html>
