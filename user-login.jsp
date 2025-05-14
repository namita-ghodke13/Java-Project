<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="wrapper">
        <div class="title">User Login Form</div>
        <form action="index.jsp" method="post">
            <div class="field">
                <input type="text" name="user" required>
                <label><i class='bx bxs-envelope'></i>  Email Address</label>
            </div>
            <div class="field">
                <input type="password" name="pass" required>
                <label><i class='bx bxs-lock'></i>  Password</label>
            </div>
            <div class="pass-link"><a href="#">Forgot password?</a></div>
            <div class="field">
               <input type="submit" value="Login">
            </div>
            <div class="register-link">Don't have an account? <a href="registration.jsp">Register here</a></div>
        </form>
    </div>
    
    <%@ page import="java.sql.*"  %>
<%@ page import="java.io.*"  %>
<%
   String username=request.getParameter("user");
   String password=request.getParameter("pass");
   if(username!=null && password!=null)
   {
	   Connection con=null;
	   PreparedStatement pst=null;
	   ResultSet rs=null;
	   try
	   {
	      Class.forName("org.postgresql.Driver");
	      con=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
	      String q="select * from registration where email=? and password=?";
          pst=con.prepareStatement(q);
          pst.setString(1,username);
          pst.setString(2,password);
          rs=pst.executeQuery();
          if(rs.next())
          {
        	  out.println("<script>alert('Login Successful...');</script>");
          }
          else
          {
        	  out.println("<script>alert('Invalid Username or Password');</script>");
          }
        }
        catch(Exception e)
        {
	         System.out.println(e);
        }
   }
%>
</body>
</html>