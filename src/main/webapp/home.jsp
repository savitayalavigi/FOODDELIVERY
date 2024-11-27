<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.tap.dto.User" %>
<%@ page import="com.tap.dto.Restaurant"%>
<%@ page import="com.tap.dao.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Online Food Delivery</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-size: cover;
        background-position: center;
        margin: 0;
        padding: 0;
        text-align: center;
        align-items: center;
        height: 100vh;
            background-color: #fgii; 
            background-image: url('images/yoga-still-life.jpg'); /* Light gray background */
        }
        header {
            background-color: #2c3e50; /* Dark blue-gray */
            color: #ecf0f1; /* Light gray */
            padding: 15px 20px;
            text-align: center;
        }
        header h1 {
            margin: 0;
            font-size: 24px;
        }
        nav {
            margin-top: 10px;
            position: relative;
            display: inline-block;
        }
        nav a, .dropdown-content a {
            color: #ecf0f1; /* Light gray */
            text-decoration: none;
            margin: 0 10px;
            font-weight: bold;
        }
        nav a:hover, .dropdown-content a:hover {
            text-decoration: underline;
            color: #3498db; /* Bright blue */
        }
        .dropdown {
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #2c3e50; /* Dark blue-gray */
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            top: 100%;
            left: 0;
        }
        .dropdown-content a {
            color: #ecf0f1; /* Light gray */
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }
        .dropdown-content a:hover {
            background-color: #34495e; /* Slightly lighter dark blue-gray */
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .welcome-message {
            display: inline-block;
            margin-right: 20px;
        }
        .restaurant-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }
        .restaurant {
            background-color: #fff; /* White background */
            border: 1px solid #ddd; /* Light gray border */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 15px;
            text-align: center;
            width: 250px;
            position: relative;
        }
        .restaurant img {
            max-width: 100%;
            border-radius: 8px;
        }
        .restaurant h3 {
            margin: 10px 0;
            font-size: 18px;
            color: #2c3e50; /* Dark blue-gray */
        }
        .restaurant p {
            margin: 5px 0;
            color: #7f8c8d; /* Medium gray */
        }
        .restaurant a {
            color: #3498db; /* Bright blue */
            text-decoration: none;
            font-weight: bold;
        }
        .restaurant a:hover {
            text-decoration: underline;
        }
        .no-restaurants {
            text-align: center;
            font-size: 18px;
            color: #7f8c8d; /* Medium gray */
            margin-top: 20px;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to Online Food Delivery</h1>
    <nav>
        <a href="home">Home</a>
        <% User user = (User) session.getAttribute("loggedInUser"); %>
        <% if (user != null) { %>
            <span class="welcome-message">Welcome, <%= user.getUsername() %></span>
            <div class="dropdown">
                <a href="#">Account</a>
                <div class="dropdown-content">
                    <a href="cart">View Cart</a>
                    <a href="OrdersHistory">View Order History</a>
                    <a href="UpdateProfile.jsp">Update Profile</a>
                    <a href="LogoutServlet">Logout</a>
                </div>
            </div>
        <% } else { %>
            <a href="login.jsp">Login</a>
            <a href="signup.jsp">Register</a>
        <% } %>
    </nav>
</header>

<h2 class="featured-restaurants">Featured Restaurants</h2>
<section class="restaurant-list">
    <% 
        List<Restaurant> restaurantList = (List<Restaurant>) session.getAttribute("restaurantList");
        if (restaurantList != null) {
            for (Restaurant restaurant : restaurantList) {
    %>
        <div class="restaurant">
            <img src="<%= restaurant.getImgPath() %>" alt="Image of <%= restaurant.getRestaurantName() %>">
            <h3><%= restaurant.getRestaurantName() %></h3>
            <p><%= restaurant.getCuisineType() %> - <%= restaurant.getDeliveryTime() %> mins</p>
            <a href="menuServlet?restaurantId=<%= restaurant.getRestaurantId() %>">View Menu</a>
        </div>
    <% 
            }
        } else { 
    %>
        <p class="no-restaurants">No restaurants available at the moment.</p>
    <% 
        } 
    %>
</section>

</body>
</html>
