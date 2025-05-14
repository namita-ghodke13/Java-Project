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
   String rating=request.getParameter("t4");
   String resp=request.getParameter("t5");
   try
   {
	   Class.forName("org.postgresql.Driver");
	   Connection con=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
       PreparedStatement ps=con.prepareStatement("insert into feedback (fname,date,rating,response) values(?,?,?,?)");
       ps.setString(1,name);
       ps.setString(2,date);
       ps.setString(3,rating);
       ps.setString(4,resp);
   
       int i = ps.executeUpdate();
       if(i >0)
       {
%>
	        <script>
	             alert("Feedback submitted succesfully.");
	             window.location.href="index.jsp";
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