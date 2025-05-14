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
   button {
        border:none;
        padding:8px 16px;
        border-radius:20px;
        font-size:14px;
        cursor:pointer;
        transition:0.3s;
   }
   .confirm-btn {
        background-color: green;
        color:white;
   }
   .cancel-btn {
        background-color: red;
        color:white;
   }
   .confirm-btn:hover {
        background-color:darkgreen;
   }
   .cancel-btn:hover {
        background-color:darkred;
   }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking Details</title>
<script>
function confirmBooking(bid) {
	  if(confirm("Are you sure you want to confirm this booking?"))
	  {
		  window.location.href="updateBooking.jsp?action=confirm&bid=" + bid;
	  }
}
function cancelBooking(bid) {
	  if(confirm("Are you sure you want to cancel this booking?")) 
	  {
		  window.location.href="updateBooking.jsp?action=cancel&bid=" + bid;
      }
}
</script>
</head>
<body>
<a href="back.jsp" class="back-button"><i>&#8592</i>Back</a>
<h1 style="text-align:center;">Booking Details</h1>
<table border="3"  style="width:100%;border-collapse:collapse;text-align:center;background-color:#FFEFF1;">
<tr>
    <th>Booking ID</th>
    <th>Customer Name</th>
    <th>Vehicle Model</th>
    <th>Vehicle Color</th>
    <th>Address</th>
    <th>Date</th>
    <th>Status</th>
    <th>Action</th>
</tr>
<%
   try
   {
	   Class.forName("org.postgresql.Driver");
	   Connection con=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
	   String q="select * from booking ORDER BY CASE WHEN status = 'Confirmed' THEN 1 ELSE 2 END, date ASC";
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery(q);
	   while(rs.next())
	   {
          %>
          <tr>
             <td><%= rs.getInt("bid") %> </td>
             <td><%= rs.getString("name") %> </td>
             <td><%= rs.getString("vmodel") %> </td>
             <td><%= rs.getString("vcolor") %> </td>
             <td><%= rs.getString("address") %> </td>
             <td><%= rs.getString("date") %> </td>
             <td><%= rs.getString("status") %> </td>
             <td>
                 <button class="confirm-btn" onclick="confirmBooking(<%= rs.getInt("bid") %>)">Confirm</button>
                 <button class="cancel-btn" onclick="cancelBooking(<%= rs.getInt("bid") %>)">Cancel</button>
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
</table>
</body>
</html>