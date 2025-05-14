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
   .remove-btn {
        background-color : red;
        color:white;
        border:none;
        padding:5px 10px;
        cursor:pointer;
   }
   .remove-btn:hover {
        background-color:darkred;
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
<title>Customer Details</title>
</head>
<body>
<a href="back.jsp" class="back-button"><i>&#8592</i>Back</a>
<h1 style="text-align:center;">Customer Details</h1>
<table border="3" style="width:100%;border-collapse:collapse;text-align:center;background-color:#FFEFF1;">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Address</th>
    <th>Phone</th>
    <th>Action</th>
</tr>
<%
   try
   {
	   Class.forName("org.postgresql.Driver");
	   Connection con=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery("select * from customer");
	   while(rs.next())
	   {
          %>
          <tr>
             <td><%= rs.getInt("cid") %> </td>
             <td><%= rs.getString("cname") %> </td>
             <td><%= rs.getString("address") %> </td>
             <td><%= rs.getString("phone") %> </td>
             <td>
                 <form action="deletecustomer.jsp" method="post" style="display:inline;">
                      <input type="hidden" name="id" value="<%= rs.getInt("cid")%>">
                      <input type="submit" class="remove-btn" value="Remove">
                 </form>
             </td>
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

<%
      String msg=request.getParameter("msg");
      if(msg!=null && !msg.isEmpty())
      {    
    	  if(msg.equals("deleted"))
    	  {
%>
               <p id="msgBox" style="color:green;text-align:center;">Customer deleted successfully</p>
<%
    	  }
    	  else if(msg.equals("notfound"))
    	  {
%>
               <p style="color:red;text-align:center;">Customer not found</p>
<%
    	  }
    	  else if(msg.equals("error"))
    	  {
%>
               <p style="color:red;text-align:center;">Error deleting customer</p>
<%
    	  }
%>
          <script>
               setTimeout( () => {
            	   var msgBox = document.getElementById("msgBox");
            	   if (msgBox)  
            		   msgBox.style.display = "none";
               }, 3000);
          </script>
<%
      }
%>

</table>
</body>
</html>