<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home - Biker's Arena</title>
 <style> @import url('https://fonts.googleapis.com/css2?family=Orbitron&family=Poppins:ital,wght@0,600;1,300&display=swap'); </style>
    <link rel="shortcut icon" type="x-icon" href="icon/Arena Logo.png" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    
</head>
<body>
	 <header>
        <nav class="navbar navbar-expand-sm navbar-dark fixed-top">

            <div class="container-fluid ">
               <a href="index.jsp"> <img src="icon/Arena Logo.png" alt="" width="45px height=28px"></a>
              <a class="navbar-brand" href="index.jsp">
                <h3><i>Biker's Arena</i></h3></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav" id="navbarNavDarkDropdown">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"> <img src="icon/home.png" height="20px" width="20px" alt=""> Home</a>
                  </li>
                  <li class="nav-item">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Products
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                          <li><a class="dropdown-item" href="jacket.jsp">Jackets</a></li>
                          <li><a class="dropdown-item" href="gloves.jsp">Gloves</a></li>
                          <li><a class="dropdown-item" href="luggage.jsp">Luggage</a></li>
                          <li><a class="dropdown-item" href="pants.jsp">Pants</a></li>
                          <li><a class="dropdown-item" href="kneegaurd.jsp">Knee gaurd</a></li>
                          <li><a class="dropdown-item" href="accessories.jsp">Accessories</a></li>
                          <li><a class="dropdown-item" href="baselayer.jsp">Base Layers</a></li>
                        </ul>
                      </li>
                  </li>
                  <li class="nav-item">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"> <img src="icon/login-icon.png" width="20px" height="20px" alt="">
                          Log In
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                        <%
                        String username=request.getParameter("uname");
    					session.setAttribute("uname",username);
                        if (username != null && !username.toString().equals("")){
                        %>
                        <li><a class="dropdown-item" href="UserLogIn.jsp"><%= username %></a></li>
                        <li><a class="dropdown-item" href=<%session.invalidate();%>>logout</a></li>
                        <li><a class="dropdown-item" href="AdminLogIn.jsp">Admin Log in</a></li>
                        
                        <%
                          }
                          else{
                        %>
                          <li><a class="dropdown-item" href="UserLogIn.jsp">User Log in</a></li>
                          <li><a class="dropdown-item" href="AdminLogIn.jsp">Admin Log in</a></li>
                        <%
                          }
                        %>
                        </ul>
                      </li>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="viewcart.jsp"><img src="icon/cart.png" width="20px" height="18px" alt=""> Cart </a>
                  </li>
                 <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
                 </li>
                </ul>
              </div>
            </div>
          </nav>

        <div class="carousel slide" id="demo">
            <div class="carousel-indicators">
                <button class="active" data-bs-target="#demo" data-bs-slide-to="0"></button>
                <button data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button data-bs-target="#demo" data-bs-slide-to="2"></button>
                <button data-bs-target="#demo" data-bs-slide-to="3"></button>
            </div>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="carousel-source/ktm.jpg" alt="">
                </div>
                <div class="carousel-item ">
                    <img src="carousel-source/pic1.jpg" alt="" >
                </div>
                <div class="carousel-item">
                    <img src="carousel-source/pic2.jpg" alt="">
                </div>
                <div class="carousel-item">
                    <video src="carousel-source/vidio1.mp4" autoplay repeat></video>
                </div>
               
            </div>

            <button class="carousel-control-prev" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>

        <script>
            const navEl = document.querySelector('.navbar');

            window.addEventListener('scroll', ()=> {
                if(window.scrollY >= 56){
                    navEl.classList.add('navbar-scrolled');
                } else if(window.scrollY < 56){
                    navEl.classList.remove('navbar-scrolled');
                }
            });
        </script>
    </header>


    <main>

  <div class="main">
    <div class="box">
        <a href="jacket.jsp"><img src="home-pic/jacket.jpg" alt=""></a>
        
    </div>
    <div class="box">
        <a href="gloves.jsp"><img src="home-pic/gloves.jpg" alt=""></a> 
    </div>
    <div class="box">
        <a href="luggage.jsp"><img src="home-pic/luggage.jpg" alt=""></a> 
      
    </div>
  </div>

  <div class="container2">
    <div class="box1">
        <a href="pants.jsp"><img src="home-pic/pant.jpg" alt=""></a>
    </div>
    <div class="box1">
        <a href="kneegaurd.jsp"><img src="home-pic/kneegaurd.jpg" alt=""></a>
    </div>
    <div class="box1">
        <a href="accessories.jsp"><img src="home-pic/accessories.jpg" alt=""></a>
    </div>
    <div class="box1">
        <a href="baselayer.jsp"><img src="home-pic/baselayer.jpg" alt=""></a>
    </div>
  </div>
  <hr>
  
  <section class="features" id="features">
    <h1 class="heading">Our <span>Features</span> </h1>
  </section>

  <div class="back">
  <div class="container">
    <div class="row">
        <div class="col-lg-3 col-md-6 col-12  mb-2">
            <div class="card">
                <div class="card-body">
                    <img src="home-pic/secure-payment.jpg" alt="" class="img-fluid">
                    <h4 class="brand-p">Secure Payment</h4>
                    <p class="card-title">100% Secure payment</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-12  mb-2">
            <div class="card">
                <div class="card-body">
                    <img src="home-pic/seven-day.png" alt="" class="img-fluid">
                    <h4 class="brand-p">7 Days Return</h4>
                    <p class="card-title">If goods have problems</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-12  mb-2">
            <div class="card">
                <div class="card-body">
                    <img src="home-pic/fater-support..jpg" alt="" class="img-fluid">
                    <h4 class="brand-p">Faster Report</h4>
                    <p class="card-title">Dedicated support</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-12  mb-2">
            <div class="card">
                <div class="card-body">
                    <img src="home-pic/free-shipping.jpg" alt="" class="img-fluid">
                    <h4 class="brand-p">Free Shipping</h4>
                    <p class="card-title">Free shipping pan india*</p>       
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</main>
    
<footer>
    <hr>
    <img src="home-pic/footer.jpg" alt="" height="200vh" width="100%">
    <div class="footer">
   <div class="conatiner3">
    <div class="row">
        <div class="footer-col">
            <h4>STORE</h4>
            <ul>
                <li><a href="#">Protection Gear</a></li>
                <li><a href="baselayer.jsp">Performance layers</a></li>
                <li><a href="luggage.jsp">Luggage</a></li>
                <li><a href="accessories.jsp">Accessories</a></li>
            </ul>
        </div>
        <div class="footer-col">
            <h4>SUPPORT</h4>
            <ul>
                <li><a href="#">Shipping Policy</a></li>
                <li><a href="#">Warranty</a></li>
                <li><a href="#">Refund / Exchange Policy</a></li>
                <li><a href="#">Care Instructions</a></li>
            </ul>
        </div>
        <div class="footer-col">
            <h4>CONTACT US</h4>
            <p>Contact Number: 9999999999</p>
            <p>Mon-Fri 11.00 AM to 4.30 PM</p>
        </div>
        <div class="footer-col">
            <h4>FOLLOW US</h4>
            <div class="social-links">
                <a href="https://www.facebook.com/" id="c1"><i class="fab fa-facebook-f"></i></a>
                <a href="https://twitter.com/i/flow/login" id="c2"><i class="fab fa-twitter"></i></a>
                <a href="https://www.instagram.com/accounts/login/" id="c3"><i class="fab fa-instagram"></i></a>
                <a href="https://www.linkedin.com/in/rohit-hadashi-b22365255/" id="c4"><i class="fab fa-linkedin"></i></a>
            </div>
        </div>
    </div>
   </div>
</div>
</footer>
</body>
</html>