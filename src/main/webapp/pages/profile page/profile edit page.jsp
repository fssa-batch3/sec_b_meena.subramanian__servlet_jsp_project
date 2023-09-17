<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile Edit Page</title>

        <link rel="stylesheet" href="../../assets/css/profile edit page.css">
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

        <div class="pro">
            <h1 class="heading"> PROFILE EDIT </h1>
        </div>
        <section class="profile_details">
            <form onsubmit="update_details(event)">
                <div class="form">
                    <div class="profile">
                        <img class="profile_img" src="../../assets/img/profile.png" alt="photo" width="180px">
                    </div>
                    <div class="details">
                        <div class="details_list">
                            <p class="list">Name:</p>
                            <input type="text" id="name" placeholder="S.Meena" class="list_2">
                        </div>
                        <div class="details_list">
                            <p class="list">Email:</p>
                            <input type="email" id="email" placeholder="vasumeenu2004@gmail.com"
                                class="list_2">
                        </div>
                        <!-- <div class="details_list">
                            <p class="list">Address:</p>
                            <input type="text" id="address"
                                placeholder="42/36,baguadwjeduuiNDEId street" class="list_2">
                        </div> -->
                        <div class="details_list">
                            <p class="list">Contact:</p>
                            <input type="text" id="phone" placeholder="74671*****"
                                class="list_2">
                        </div>
                        <!-- <div class="details_list">
                            <p class="list">District:</p>
                            <input type="text" id="district" placeholder="Thirunelveli"
                                class="list_2">
                        </div> -->
                        <!-- <div class="details_list">
                            <p class="list">D.O.B:</p>
                            <input type="date" id="dob" placeholder="17/08/2004" class="list_2">
                        </p>
                        </div> -->
                    </div>
                    <div class="buttons">
                        <button type="submit" class="edit-btn">
                            <strong>Save</strong>
                        </button></a>

                    </div>
                </div>
            </form>
        </section>

        <script>const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));
        const user_cred = JSON.parse(localStorage.getItem("user_cred"));
        function profile_data(e) {
          return e.email === uniqueID_user;
        }
        const person_data = user_cred.find(profile_data);
        document.getElementById("name").value = person_data.name;
        document.getElementById("email").value = person_data.email;
        document.getElementById("phone").value = person_data.phone;
        // document.getElementById("dob").value = person_data.dob;
        // document.getElementById("address").value = person_data.address;
        document.getElementById("district").value = person_data.district;

        function update_details(e) {
          e.preventDefault();

        //   const address = document.getElementById("address").value;
          const district = document.getElementById("district").value;
          const phone = document.getElementById("phone").value;
        //   const dob = document.getElementById("dob").value;

          person_data.address = address;
          person_data.district = district;
          person_data.phone = phone;
          person_data.dob = dob;
          localStorage.setItem("user_cred", JSON.stringify(user_cred));
          //console.log(user_list);
          window.location.href = "../profile page/profile page.jap";
        }
    </script>

    </body>

</html>