<%@page import="sun.java2d.SunGraphicsEnvironment.T1Filter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Form</title>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="registration.css">
</head>
<body>
  <div class="container">
    <!-- Title section -->
    <img src="Images/logbg.jpg" height="60%" width="40%">
    <div class="title"><b>Registration Form</b></div>
    <div class="content">
      <!-- Registration form -->
      <form action="register.jsp" method="post">
        <div class="user-details">
          <!-- Input for Full Name -->
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="t1" placeholder="Enter your name" required>
          </div>
          <!-- Input for DOB -->
          <div class="input-box">
            <span class="details">Date of Birth</span>
            <input type="date" name="t2" placeholder="mm-dd-yyyy" required>
          </div>
          <!-- Input for Age -->
          <div class="input-box">
            <span class="details">Age</span>
            <input type="number" name="t3" placeholder="Enter your age" required>
          </div>
          <!-- Input for Email -->
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email"  name="t4" placeholder="Enter your email" required>
          </div>
          <!-- Input for Phone Number -->
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="tel" name="t5" placeholder="Enter your number" required>
          </div>
          <!-- Input for Address -->
          <div class="input-box">
            <span class="details">Address</span>
            <input type="text" name="t6" placeholder="Enter your address" required>
          </div>
          <!-- Input for Password -->
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" name="t7" placeholder="Enter your password" required>
          </div>
          <!-- Input for Confirm Password -->
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password" name="t8" placeholder="Confirm your password" required>
          </div>
        </div>
        <div class="gender-details">
          <!-- Radio buttons for gender selection -->
          <input type="radio" name="gender" id="dot-1">
          <input type="radio" name="gender" id="dot-2">
          <span class="gender-title">Gender</span>
          <div class="category">
            <!-- Label for Male -->
            <label for="dot-1">
              <span class="dot one"></span>
              <span class="gender">Male</span>
            </label>
            <!-- Label for Female -->
            <label for="dot-2">
              <span class="dot two"></span>
              <span class="gender">Female</span>
            </label>
          </div>
        </div>
        <!-- Submit button -->
        <div class="button">
          <input type="submit"   value="Register">
        </div>
      </form>
    </div>
  </div>
</body>
</html>