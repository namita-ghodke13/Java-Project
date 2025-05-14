<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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