<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products Update - Biker's Arena </title>
<link rel="shortcut icon" type="x-icon" href="icon/Arena Logo.png" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style> @import url('https://fonts.googleapis.com/css2?family=Orbitron&family=Poppins:ital,wght@0,600;1,300&display=swap'); </style>
    <link rel="stylesheet" href="css/AddProduct.css">
</head>
<body>
	 <header>
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark navbar-scrolled">

            <div class="container-fluid bg-dark">
                <a href="index.jsp"> <img src="icon/Arena Logo.png" alt="" width="45px height=28px"></a>
              <a class="navbar-brand" href="index.jsp">
                <h3><i>Biker's Arena</i></h3></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav" id="navbarNavDarkDropdown">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp"><img src="icon/home.png" height="20px" width="20px" alt=""> Home</a>
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
                          <li><a class="dropdown-item" href="UserLogIn.jsp">User Log in</a></li>
                          <li><a class="dropdown-item" href="AdminLogIn.jsp">Admin Log in</a></li>
                        </ul>
                      </li>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><img src="icon/cart.png" width="20px" height="18px" alt=""> Cart</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
                </li>
                </ul>
              </div>
            </div>
          </nav>
    </header>
    <main>
      <div class="h">
        <h1>Products</h1>
        <span>Add Products for Admin</span>
        <hr>
      </div>
      
      <section class="Form my-4 mx-5">
            <div class="continer">
                <div class="row no-gutters">
                    <div class="col-lg-5 check">
                        <img src="login-pics/add products.jpg" alt="" class="img-fluid">
                    </div>
                    <div class="col-lg-7 px-5 pt-3">
                        <h1 class="font-weight-bold py-3">Welcome Admin to Biker's Arena</h1>
                        <h4>Add your products</h4>
      	<form action="Check" method="post" enctype="multipart/form-data">
						 <div class="form-row">
                            <div class="col-lg-7 ">
                                <p>Enter Brand Name :</p>
                                <input type="text" placeholder="Brand Name" name="brand" class="form-control my-3 p-3">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <p>Enter Product Name :</p>
                                <input type="text" placeholder="Product Name"   name="name" class="form-control my-3 p-3">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <p>Enter Product Description :</p>
                                <input type="text" placeholder="Product Description" name="description" class="form-control my-3 p-3">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <p>Enter Price :</p>
                                <input type="text" maxlength="10"  placeholder="Enter Price" name="price" class="form-control my-3 p-3">
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="col-lg-7">
                                <p>Insert Image :</p>
                                <input type="file" name="image" class="form-control my-3 p-3">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <button type="submit" class="btn1 mt-3 mb-5">Add Product</button>
                            </div>
                        </div>
        </form>
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