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
<%
   String name=request.getParameter("t1");
   String em=request.getParameter("t4");
   String pass=request.getParameter("t7");
   
   try
   {
	   Class.forName("org.postgresql.Driver");
	   Connection con=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
       PreparedStatement ps=con.prepareStatement("insert into registration (rname,email,password) values(?,?,?)");
       ps.setString(1,name);
       ps.setString(2,em);
       ps.setString(3,pass);
   
       int result = ps.executeUpdate();
       System.out.println(result);
       if(result>0)
       {
%>
	        <script>
	             alert("Registration Successful !.....");
	             window.location.href="user-login.jsp";
	        </script>
	        <%   
	   }
       else
       {         
	         %>
	         <script>
	             alert("Registration Failed. Please try again.");
	             window.location.href="registration.jsp";
	        </script>
<%	        
       }
       ps.close();
       con.close();
   }
   catch(Exception e)
   {
	   System.out.println(e);
   }
%>
</body>
</html>