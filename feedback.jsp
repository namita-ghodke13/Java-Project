<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            text-align: left;
            max-width: 500px;
            background: white;
            align-content: center;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .heading-container {
            display: flex;
            align-items: center;
        }
        .icon {
            width: 50px;
            height: 40px;
            margin-right: 10px;
        }
        #rating option {
            color:black;
        }
        select {
            font-size:18px;
            color:black;
            border:1px solid black;
            padding:5px;
        }
        input, textarea, select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="heading-container">
         <img src="car.gif" alt="Car Icon" class="icon">
         <h2>Customer Feedback</h2>
    </div>
    <form action="feed.jsp" method="post">
        <label>Full Name :</label>
        <input type="text" id="name" name="t1" required >

        <label for="email">Email Address :</label>
        <input type="email" id="email" name="t2" required >

        <label for="date">Date :</label>
        <input type="date" id="date" name="t3">

        <label for="rating">Rating :</label>
        <select id="rating" name="t4">
            <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733;  - <h3>Excellent</h3></option>
            <option value="4">&#9733;&#9733;&#9733;&#9733; - <h3>Good</h3></option>
            <option value="3">&#9733;&#9733;&#9733; -  <h3>Average</h3></option>
            <option value="2">&#9733;&#9733;  - <h3>Poor</h3></option>
            <option value="1">&#9733; - <h3>Very Poor</h3></option>
        </select>
        

        <label for="feedback">Response : </label>
        <textarea id="feedback" name="t5" rows="4" required></textarea>

        <button type="submit">Submit Feedback</button>
    </form>
</div>

</body>
</html>