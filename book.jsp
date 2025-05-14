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
   String date=request.getParameter("t3");
   String vmodel=request.getParameter("t4");
   String vcolor=request.getParameter("t5");
   String address=request.getParameter("t2");
   String phone=request.getParameter("t6");
   System.out.println(name);
   try
   {
	   Class.forName("org.postgresql.Driver");
	   Connection con=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
       PreparedStatement ps=con.prepareStatement("insert into booking (name,date,vmodel,vcolor,address) values(?,?,?,?,?)");
       ps.setString(1,name);
       ps.setString(2,date);
       ps.setString(3,vmodel);
       ps.setString(4,vcolor);
       ps.setString(5,address);
       int result = ps.executeUpdate();
       PreparedStatement ps1=con.prepareStatement("insert into customer (cname,address,phone) values(?,?,?)");
       ps1.setString(1,name);
       ps1.setString(2,address);
       ps1.setString(3,phone);
       ps1.executeUpdate();
       if(result>0)
       {
%>
	        <script>
	             alert("Booking Successful !.....");
	             window.location.href="invoice.jsp";
	        </script>
	        <% 
       }
       else
       {
    	   %>
	         <script>
	             alert("Booking Failed. Please try again.");
	             window.location.href="booking.jsp";
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