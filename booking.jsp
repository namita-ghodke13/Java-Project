<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="booking.css">
   <title>Vehicle Booking Form</title>
</head>
<body>
   <div class="form-container">
      <form action="book.jsp" method="post">
         <img class="img" src="1.png" height="40%" width="30%"><h2>Vehicle Booking Form</h2>
         <input type="text" name="t1" placeholder="Name">
         <div>
            <input type="email" placeholder="Email">
            <input type="tel" name="t6" placeholder="Phone">
         </div>

         <input type="text" name="t2" placeholder="Address">

         <div class="date">
            <input type="text" placeholder="City">
            <select name="" id="">
               <h3><option>---- Select State ----</option>
               <h3><option value="maharashtra">Maharashtra</option>
               <h3><option value="andhra pradesh">Andhra Pradesh</option></h3>
               <h3><option value="rajasthan">Rajasthan</option></h3>
               <h3><option value="madhya pradesh">Madhya Pradesh</option></h3>
               <h3><option value="gujrat">Gujrat</option></h3>
               <h3><option value="assam">Assam</option></h3>
            </select>
         </div>
         <div>
            <input type="number" placeholder="Pin Code">
            <input type="text" placeholder="Country">
         </div>
         <div class="date">
            <h4>Booking Date : </h4> 
            <input type="date" name="t3" placeholder="">
         </div>

         <div class="date">
         <h4>Vehicle Model : </h4>
            <select name="t4" id="">
               <h3><option>---- Select Vehicle ----</option>
               <h3><option value="Ertiga">Ertiga</option>
               <h3><option value="Hyundai">Hyundai</option></h3>
               <h3><option value="Scorpio">Scorpio</option></h3>
               <h3><option value="Grand Vitara">Grand Vitara</option></h3>
               <h3><option value="Swift">Swift</option></h3>
            </select>
         </div>
         <div class="date">
            <h4>Vehicle Color : </h4>
            <select name="t5" id="">
               <option>---- Select Color ----</option>
               <option value="red">Red</option>
               <option value="blue">Blue</option>
               <option value="black">Black</option>
               <option value="white">White</option>
               <option value="grey">Grey</option>
            </select>
         </div>
         <button type="submit">Book Now</a></button>
      </form>
   </div>
</body>
</html>