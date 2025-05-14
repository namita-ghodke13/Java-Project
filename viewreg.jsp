<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"  %>
<html>
<head>
<style>
   table {
        width:100%;
        border-collapse:collapse;
        margin:20px auto;
   }
   th, td {
        padding:12px;
        font-size:16px;
        text-align:center;
        border:2px solid black;
   }
   th {
        background-color:#f2f2f2;
   }
   .back-button {
        position:absolute;
        top:10px;
        left:10px;
        background-color:#0073e6;
        color:white;
        padding:10px 20px;
        border:none;
        border-radius:8px;
        text-decoration:none;
        font-size:16px;
        cursor:pointer;
        display:flex;
        align-items:center;
        gap:8px;
        transition:0.3s;
   }
   .back-button:hover {
        background-color:#005bb5;
   }
   .back-button i {
        font-size:18px;
   }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Details</title>
</head>
<body>
<a href="back.jsp" class="back-button"><i>&#8592</i>Back</a>
<h1 style="text-align:center;">Registration Details</h1>
<table border="3" style="width:100%;border-collapse:collapse;text-align:center;background-color:#FFEFF1;">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
</tr>
<%
   try
   {
	   Class.forName("org.postgresql.Driver");
	   Connection con=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery("select * from registration");
	   while(rs.next())
	   {
          %>
          <tr>
             <td><%= rs.getInt("rid") %> </td>
             <td><%= rs.getString("rname") %> </td>
             <td><%= rs.getString("email") %> </td>
             <td><%= rs.getString("password") %> </td>
          </tr>
          <%
	   }
	   con.close();
   }
   catch(Exception e)
   {
	   System.out.println(e);
   }
%>
</table>
</body>
</html>