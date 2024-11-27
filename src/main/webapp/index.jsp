<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Access</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('images/reg.jpg'); /* Replace 'your_image.jpg' with the actual path to your image */
        background-size: cover;
        background-position: center;
        margin: 0;
        padding: 0;
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
    
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 140px;
        text-align: center;
        margin: 50px 50px 170px 450px;
    }

    .links {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    a {
        text-decoration: none;
        color: black;
        font-size: 60px;
        font-weight: bold;
        margin: 10px;
        display: inline-block;
        transition: color 0.3s, transform 0.3s, background-color 0.3s;
    }

    a:hover {
        color: red;
        transform: scale(1.05);
        background-color: #f0f0f0;
        padding: 5px 10px;
        border-radius: 5px;
    }

    a:active {
        color: green;
        transform: scale(0.95);
    }

    h1 {
        margin-bottom: 20px;
        font-size: 70px;
        color: red;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Our Platform</h1>
        <div class="links">
            <a href="signup.jsp">Sign Up</a>
            <a href="login.jsp">Login Page</a>
        </div>
    </div>
</body>
</html>