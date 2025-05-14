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
    String action=request.getParameter("action");
    int bid=Integer.parseInt(request.getParameter("bid"));
    Connection conn=null;
    PreparedStatement pstmt=null;
    String message="";
    try
    {
    	Class.forName("org.postgresql.Driver");
    	conn=DriverManager.getConnection("jdbc:postgresql:project","postgres","root");
    	if("confirm".equals(action))
    	{
    		pstmt=conn.prepareStatement("update booking set status='Confirmed' where bid=?");
    		pstmt.setInt(1,bid);
    		pstmt.executeUpdate();
    		message="Booking confirmed successfully";
    	}
    	else if("cancel".equals(action))
    	{
    		pstmt=conn.prepareStatement("delete from booking where bid=?");
    		pstmt.setInt(1,bid);
    		pstmt.executeUpdate();
    		message="Booking cancelled successfully";
    	}
    }
    catch(Exception e)
    {
    	System.out.println(e);
    }
%>

<script>
alert("<%= message %>");
window.location.href="viewbooking.jsp";
</script>
</body>
</html>