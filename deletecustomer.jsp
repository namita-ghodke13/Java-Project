<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
   String id=request.getParameter("id");
   if(id!=null && !id.isEmpty())
   {
	   try
	   {
		   Class.forName("org.postgresql.Driver");
		   Connection con=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
		   PreparedStatement pmt=con.prepareStatement("delete from customer where cid=?");
		   pmt.setInt(1,Integer.parseInt(id));
		   int rows=pmt.executeUpdate();
		   con.close();
		   if(rows>0)
		   {
			   response.sendRedirect("viewcustomer.jsp?msg=deleted");
		   }
		   else
		   {
			   response.sendRedirect("viewcustomer.jsp?msg=notfound");
		   }
	   }
	   catch(Exception e)
	   {
		   response.sendRedirect("viewcustomer.jsp?msg=error");
	   }
   }
   else
   {
	   response.sendRedirect("viewcustomer.jsp?msg=invalid");
   }
%>
</body>
</html>