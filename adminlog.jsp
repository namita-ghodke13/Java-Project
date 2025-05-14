<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
<style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction:column;
            height: 100vh;
            margin:0;
            background: #ffd3c7;
        }
        .image-container {
            position:absolute;
            top:100px;
            left:50%;
            transform:translateX(-50%);
        }
        .image-container img {
            width:200px;
            display:block;
        }
        .button-container {
            display: flex;
            justify-content:center;
            gap: 15px;
            position:absolute;
            top:55%;
            transform:translateY(-50%);
        }
        .btn {
            padding: 12px 25px;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
            text-align: center;
            text-decoration: none;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);
        }
        .btn:hover {
            transform: scale(1.1);
        }
        .btn.customer {
            background: linear-gradient(45deg, #4CAF50, #2E7D32);
        }
        .btn.registrations {
            background: linear-gradient(45deg, #FF9800, #E65100);
        }
        .btn.bookings {
            background: linear-gradient(45deg, #2196F3, #0D47A1);
        }
        .btn.feedbacks {
            background: linear-gradient(45deg, #9b59b6, #6a1b9a);
        }
    </style>
</head>
<body>
<%@ page import="java.sql.*"  %>
<%@ page import="java.io.*"  %>
<%
   String username=request.getParameter("user");
   String password=request.getParameter("pass");
   if(username.equals("Admin")&& password.equals("admin@13"))
   {
		 out.println("<script>alert('Login Successful...');</script>");
   }
   else
   {
         out.println("<script>alert('Invalid Username or Password');</script>");
   }
%>
    
    <div class="image-container">
        <img src="carani.gif" alt="Vehicle Animation">
    </div>
    <div class="button-container">
        <a href="viewreg.jsp" class="btn registrations">View Registrations</a>
        <a href="viewcustomer.jsp" class="btn customer">View Customers</a>
        <a href="viewbooking.jsp" class="btn bookings">View Bookings</a>
        <a href="viewfeedback.jsp" class="btn feedbacks">View Feedbacks</a>
    </div>
</body>
</html>
</body>
</html>