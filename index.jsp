<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Home</title>
   <link rel="stylesheet" href="style.css">
   <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
   <style>
      body {
         font-family: Arial, sans-serif;
         font-size: 20;
         margin-top: 50px;
      }
      .login-btn {
         background-color: var(--main-color);
         color: white;
         padding: 10px 20px;
         border: none;
         cursor: pointer;
         font-size: 16px;
         border-radius: 5px;
      }
      .dropdown {
         position: relative;
         display: inline-block;
      }
      .dropdown-content {
         display: none;
         position: absolute;
         background-color: #f9f9f9;
         min-width: 150px;
         box-shadow: 0px 8px 16px rgba(0,0,0,0.2);
         z-index: 1;
      }
      .dropdown-content a {
         color: black;
         padding: 12px 16px;
         text-decoration: none;
         display: block;
      }
      .dropdown-content a:hover {
         background-color: #ddd;
      }
      .dropdown:hover .dropdown-content {
         display: block;
      }
   </style>
</head>
<body>
   <header>
      <div class="nav container">
         <i class='bx bx-menu' id="menu-icon"></i>
         <a href="#" class="logo"><h3>Car<span>Point</span></h3></a>
         <ul class="navbar">
            <li><a href="index.html" class="active"><b><i class='bx bxs-home'></i> Home</b></a></li>
            <li><a href="#vehicles"><b><i class='bx bxs-car'></i> Vehicles</b></a></li>
            <li><a href="#services"><b><i class='bx bx-cog'></i> Services</b></a></li>
            <li><a href="#aboutus"><b><i class='bx bx-info-circle'></i> About Us</b></a></li>
            <li><a href="#contactus"><b><i class='bx bxs-phone'></i> Contact Us</b></a></li>
            <li><a href="feedback.jsp"><b><i class='bx bx-notepad'></i> Feedback</b></a></li>
         </ul>
         <i class='bx bx-search' id="search-icon" ></i>
         <div class="search-box container">
            <input type="search" name="" id="" placeholder="Search here...">
         </div>
      </div>
   </header>

   <!-- Home -->

   <section class="home" id="home">
      <div class="home-text">
         <h1>Buy the best Quality <span>Cars</span></h1>
         <p><b>Find your perfect match from our diverse selection <br> of vehicles.</b></p>
         <div class="dropdown">
            <button class="login-btn"><i class='bx bxs-user' ></i> Login Now</button>
            <div class="dropdown-content">
               <a href="admin-login.jsp">Admin Login</a>
               <a href="user-login.jsp">User Login</a>
            </div>
         </div>
      </div>
   </section>
   <section class="cars" id="cars">
      <div class="heading">
         <span>All Cars</span>
         <h4>We have all types of Cars</h4>
         <p>Unlock Your Journey, Drive Uniqueness</p>
      </div>
      <div class="cars-container container">
         <div class="box">
            <img src="Images\celerio.webp" alt="">
            <h2>Celerio</h2>
         </div>
         <div class="box">
            <img src="Images\car9.jpeg" alt="">
            <h2>DZire</h2>
         </div>
         <div class="box">
            <img src="Images\b.jpg" alt="">
            <h2>Brezza</h2>
         </div>
         <div class="box">
            <img src="Images\m.png" alt="">
            <h2>Maruti Suzuki</h2>
         </div>
         <div class="box">
            <img src="Images\car1.jpg" alt="">
            <h2>Ertiga</h2>
         </div>
         <div class="box">
            <img src="Images\Alto_K10-brown.webp" alt="">
            <h2>Alto K10</h2>
         </div>
      </div>
   </section>

   <!-- Vehicles -->

   <section class="vehicles" id="vehicles">
      <div class="heading">
         <span><i class='bx bxs-car'></i> Vehicles we Offer</span>
      </div>
      <div class="vehicles-container container">
         <div class="box">
            <img src="Images\car-5.png" alt="">
            <h3>Kia Sportage</h3>
            <span>Rs.9.89 - 15.75 Lakh</span>
            <i class='bx bxs-star'> (4 Reviews)</i>
            <a href="booking.jsp" class="btn">Book Now</a>
            <a href="#" class="details">View Details</a>
         </div>
         <div class="box">
            <img src="Images\hyundai.jpg" alt="">
            <h3>Hyundai</h3>
            <span>Rs.29.01 - 35.94 Lakh</span>
            <i class='bx bxs-star'> (6 Reviews)</i>
            <a href="booking.jsp" class="btn">Book Now</a>
            <a href="#" class="details">View Details</a>
         </div>
         <div class="box">
            <img src="Images\Alto_K10-brown.webp" alt="">
            <h3>Alto K10</h3>
            <span>Rs.4.72 - 6.87 Lakh</span>
            <i class='bx bxs-star'> (5 Reviews)</i>
            <a href="booking.jsp" class="btn">Book Now</a>
            <a href="#" class="details">View Details</a>
         </div>
      </div>
      <div class="vehicles-container container">
         <div class="box">
            <img src="Images\car9.jpeg" alt="">
            <h3>D-Zire</h3>
            <span>Rs.6.84 - 10.19 Lakh</span>
            <i class='bx bxs-star'> (5 Reviews)</i>
            <a href="booking.jsp" class="btn">Book Now</a>
            <a href="#" class="details">View Details</a>
         </div>
         <div class="box">
            <img src="Images\m.png" alt="">
            <h3>Maruti Suzuki Alto K10</h3>
            <span>Rs.3.99 - 5.84 Lakh</span>
            <i class='bx bxs-star'> (3 Reviews)</i>
            <a href="booking.jsp" class="btn">Book Now</a>
            <a href="#" class="details">View Details</a>
         </div>
         <div class="box">
            <img src="Images\car3.jpg" alt="">
            <h3>Grand Vitara</h3>
            <span>Rs.11.19 - 20.09 Lakh</span>
            <i class='bx bxs-star'> (6 Reviews)</i>
            <a href="booking.jsp" class="btn">Book Now</a>
            <a href="#" class="details">View Details</a>
         </div>
      </div>
      <div class="vehicles-container container">
         <div class="box">
            <img src="Images\3.jpg" alt="">
            <h3>Maruti Ertiga</h3>
            <span>Rs.10.29 - 15.45 Lakh</span>
            <i class='bx bxs-star'> (6 Reviews)</i>
            <a href="booking.jsp" class="btn">Book Now</a>
            <a href="#" class="details">View Details</a>
         </div>
         <div class="box">
            <img src="Images\2.jpg" alt="">
            <h3>Ertiga</h3>
            <span>Rs.5.67 - 8.89 Lakh</span>
            <i class='bx bxs-star'> (4 Reviews)</i>
            <a href="booking.jsp" class="btn">Book Now</a>
            <a href="#" class="details">View Details</a>
         </div>
         <div class="box">
            <img src="Images\wagon-r.avif" alt="">
            <h3>WagonR</h3>
            <span>Rs.6.63 - 9.78 Lakh</span>
            <i class='bx bxs-star'> (6 Reviews)</i>
            <a href="booking.jsp" class="btn">Book Now</a>
            <a href="#" class="details">View Details</a>
         </div>
      </div>
   </section>


   <!-- Services -->
   
   <section class="services" id="services">
      <div class="heading">
         <span><i class='bx bx-cog'></i> Services We Provide</span>
      </div>
      <div class="services-container container">
         <div class="box">
            <br>
            <h3>Financing & Loan Assistance Services</h3>
            <p>---------------------------</p>
            <p>Find the best financing options with our trusted partners,making it easier to purchase your dream vehicle with flexible loan plans and competitive interest rates.</p><br>
            <a href="#" class="services-btn">Read More<i class='bx bx-right-arrow-alt' ></i></a>
         </div>

         <div class="box">
            <br>
            <h3>Insurance and Extended Warranty</h3>
            <p>---------------------------</p>
            <p>Protect your new vehicle with comprehensive insurance coverage and extended warranty plans for added security and peace of mind.</p><br><br>
            <a href="#" class="services-btn">Read More<i class='bx bx-right-arrow-alt' ></i></a>
         </div>

         <div class="box">
            <br>
            <h3>Vehicle Servicing & Maintenance</h3>
            <p>---------------------------</p>
            <p>Enjoy scheduled maintenance services, periodic check-ups,and genuine spare parts replacement through our authorized service partners.</p><br>
            <a href="#" class="services-btn">Read More<i class='bx bx-right-arrow-alt' ></i></a>
         </div>

         <div class="box">
            <br>
            <h3>Accessories & Customization</h3>
            <p>---------------------------</p>
            <p>Enhance your vehicle with a range of accessories,including seat covers,infotainment systems,alloy wheels,and more,tailored to your style and needs.</p>
            <a href="#" class="services-btn">Read More<i class='bx bx-right-arrow-alt' ></i></a>
         </div>
      </div>
      <div class="services-container container">
         <div class="box">
            <br>
            <h3>Driving Tips & Owner Guides</h3>
            <p>---------------------------</p>
            <p>Get expert advice on vehicle maintenance,fuel efficiency,and safe driving practices to maximize your vehicle's performance and lifespan.</p><br>
            <a href="#" class="services-btn">Read More<i class='bx bx-right-arrow-alt' ></i></a>
         </div>

         <div class="box">
            <br>
            <h3>Vehicle Servicing & Maintenance</h3>
            <p>---------------------------</p>
            <p>Enjoy scheduled maintenance services, periodic check-ups,and genuine spare parts replacement through our authorized service partners.</p><br>
            <a href="#" class="services-btn">Read More<i class='bx bx-right-arrow-alt' ></i></a>
         </div>

         <div class="box">
            <br>
            <h3>Customer Support & Assistance</h3>
            <p>---------------------------</p>
            <p>Our dedicated customer service team is always available to address any queries related to your purchase,servicing,or ownership experience.</p><br>
            <a href="#" class="services-btn">Read More<i class='bx bx-right-arrow-alt' ></i></a>
         </div>

         <div class="box">
            <br>
            <h3>Loyalty & Referral Benefits</h3>
            <p>---------------------------</p>
            <p>Earn rewards and exclusive discounts through our loyalty programs and referral bonuses when you recommend our platform to friends and family</p><br>
            <a href="#" class="services-btn">Read More<i class='bx bx-right-arrow-alt' ></i></a>
         </div>
      </div>
   </section>

    <!-- About Us -->

    <section class="aboutus container" id="aboutus">
      <div class="aboutus-img">
       <img src="Images\62.jpg" alt="">
      </div>
      <div class="aboutus-text">
       <span><i class='bx bx-info-circle'></i> About Us</span>
       <p>Welcome to <b>CarPoint</b>, your trusted destination for buying vehicles with ease. We offer a seamless online platform where buyers can explore a wide range of cars,where seller can list their vehicles hassle-free. Our mission is to connect buyers with the perfect ride by providing transparent listings, competitive prices, and a user-friendly experience. Whether you're searching for a brand-new car,a reliable used vehicle, <b>CarPoint</b> is here to make the process smooth and efficient. Drive your dream vehicle today!</p>
       <a href="#" class="btn">Learn More</a>
      </div>
    </section>

   <!-- Contact Us -->

   <section class="contactus" id="contactus">
      <div class="heading">
         <h2 style=" font-weight: 500;font-size: 250%;color: var(--main-color);text-shadow: violet;"><i class='bx bxs-phone'></i> Contact Us</h2><br>
         <p><h4>"We're Here to Help!" <br>and "Reach out to us anytime and we'll happily <br> answer your questions".</h4></p><br>
         <p>-------------------------------------------------------------------------------------------------</p>
      </div>
      <div class="contactus-container container">
         <div class="box">
            <span><center><i class='bx bxs-phone' id="phone"></i></center></span>
            <center><h4>Phone</h4></center>
            <p>........................................................................</p>
            <p><center>+0123 9876 3456</center></p>
            <p><center>+2243 7862 9812</center></p>
         </div>
         <div class="box">
            <span><center><i class='bx bxs-envelope'></i></center></span>
            <center><h4>Email</h4></center>
            <p>........................................................................</p>
            <p><center>carpoint@gmail.com</center></p>
            <p><center>info.carpoint@gmail.com</center></p>
         </div>
         <div class="box">
            <span><center><i class='bx bxs-map'></i></center></span>
            <center><h4>Address</center></h4>
            <p>........................................................................</p>
            <p><center>Shrirampur, 413739</center></p>
            <p><center>Dist - Ahilyanagar</center></p>
         </div>
      </div>
   </section>


   <!-- Footer -->

   <section class="footer">
      <div class="footer-container container">
         <div class="footer-box">
            <a href="#" class="logo">Car<span>Point</span></a>
            <div class="social">
               <a href="#"><i class='bx bxl-facebook' ></i></a>
               <a href="#"><i class='bx bxl-twitter' ></i></a>
               <a href="#"><i class='bx bxl-instagram' ></i></a>
               <a href="#"><i class='bx bxl-youtube' ></i></a>
            </div>
         </div>
         <div class="footer-box">
            <h3><i class='bx bx-file-blank' ></i> Page</h3>
            <a href="#"> Home</a>
            <a href="#"> Vehicles</a>
            <a href="#"> Services</a>
            <a href="#"> About Us</a>
            <a href="#"> Contact Us</a>
            <a href="#"> Feedback</a>
         </div>
         <div class="footer-box">
            <h3><i class='bx bxs-file-doc' ></i> Legal</h3>
            <a href="#"> Privacy</a>
            <a href="#"> Refund Policy</a>
            <a href="#"> Cookie Policy</a>
         </div>
         <div class="footer-box">
            <h3><i class='bx bxs-phone' ></i> Contact</h3>
            <p> United States</p>
            <p> Japan</p>
            <p> Germany</p>
         </div>
      </div>
   </section>

   <!-- Copyright -->

   <div class="copyright">
      <p>&#169; CarpoolVenom All Right Reserved</p>
   </div>
   <script src="main.js"></script>
</body>
</html>