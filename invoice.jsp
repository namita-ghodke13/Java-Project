<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle Booking Invoice</title>
<style>
   body {
       font-family:Arial,sans-serif;
       background-color:#f4f4f4;
       text-align:center;
   }
   .invoice-box {
       background:white;
       padding:20px;
       margin:50px auto;
       width:50%;
       border-radius:8px;
       box-shadow:0px 0px 10px 0px gray;
   }
   h2 {
       color:#333;
   }
   table {
       width:100%;
       border-collapse:collapse;
   }
   table,th,td {
       border:1px solid black;
       padding:10px;
   }
   .buttons {
       margin-top:20px;
   }
   button {
       padding:10px 15px;
       margin:5px;
       font-size:16px;
       cursor:pointer;
   }
   .ok-btn {
       background:green;
       color:white;
       border:none;
   }
</style>
</head>
<body>
<%@ page import="java.sql.*"  %>
<%
   String name=(String) session.getAttribute("name");
   String vmodel=request.getParameter("t4");
   String vcolor=request.getParameter("t5");
   String date=request.getParameter("t3");
   System.out.println(name);
   String price="Not Available";
   Connection con=null;
   PreparedStatement pst=null;
   ResultSet rs=null;
   try
   {
	   Class.forName("org.postgresql.Driver");
	   con=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
	   String q="select price from vehicle where vmodel=?";
	   pst=con.prepareStatement(q);
	   pst.setString(1,vmodel);
	   rs=pst.executeQuery();
	   if(rs.next())
	   {
		   price=rs.getString("price");
	   }
   }
   catch(Exception e)
   {
	   System.out.println(e);
   }
   finally
   {
	   if(rs!=null) rs.close();
	   if(pst!=null) pst.close();
	   if(con!=null) con.close();
   }
%>

<div class="invoice-box">
   <h2>Vehicle Booking Invoice</h2>
   <table>
      <tr>
         <th>Customer Name</th>
         <td>Vedashri Kulkarni</td>
      </tr>
      <tr>
         <th>Vehicle Model</th>
         <td>Grand Vitara</td>
      </tr>
      <tr>
         <th>Vehicle Color</th>
         <td>Blue</td>
      </tr>
      <tr>
         <th>Booking Date</th>
         <td>19/03/2025</td>
      </tr>
      <tr>
         <th>Vehicle Price</th>
         <td>Rs.11.19 - 20.09 Lakh</td>
      </tr>
   </table>
   <div class="buttons">
       <button class="ok-btn" onclick="confirmBooking()">OK</button>
       <button class="cancel-btn" onclick="cancelBooking()">Cancel</button>
   </div>
</div>
<script>
  function confirmBooking() {
	  alert("Booking Confirmed");
	  window.location.href="index.jsp";
  }
  function cancelBooking() {
	  alert("Booking Cancelled");
	  window.location.href="booking.jsp";
  }
</script>
</body>
</html>