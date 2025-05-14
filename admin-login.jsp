<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="wrapper">
        <div class="title">Admin Login Form</div>
        <form action="adminlog.jsp" method="post">
            <div class="field">
                <input type="text" name="user" required>
                <label><i class='bx bxs-envelope'></i>  Email Address</label>
            </div>
            <div class="field">
                <input type="password" name="pass" required>
                <label><i class='bx bxs-lock'></i>  Password</label>
            </div>
            <div class="pass-link"><a href="#">Forgot password?</a></div>
            <div class="field">
               <input type="submit" value="Login">
            </div>
        </form>
    </div>
</body>
</html>