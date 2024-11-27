<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.tap.dto.OrderHistory" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order History</title><style>
    body {
        background-color: #f0e68c; /* Soft gold background */
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
    }

    h1 {
        color: #b22222; /* Dark red */
        text-align: center;
        margin-bottom: 30px;
    }

    .order-history {
        background-color: #ffffff; /* White background */
        border: 2px solid #4CAF50; /* Green border */
        border-radius: 8px; /* Rounded corners */
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        padding: 20px;
        margin: 20px 0;
        transition: transform 0.2s; /* Smooth hover effect */
    }

    .order-history:hover {
        transform: scale(1.02); /* Slightly enlarge on hover */
    }

    .order-history h2 {
        margin-top: 0;
        color: #333; /* Dark gray */
    }

    .order-history p {
        margin: 8px 0;
        line-height: 1.6; /* Improved readability */
        color: #555; /* Medium gray */
    }

    .view-link {
        color: #007BFF; /* Bootstrap primary blue */
        text-decoration: none;
        font-weight: bold;
    }

    .view-link:hover {
        text-decoration: underline;
        color: #0056b3; /* Darker blue on hover */
    }

    @media (max-width: 600px) {
        body {
            padding: 10px; /* Adjust padding on smaller screens */
        }

        .order-history {
            padding: 15px; /* Adjust padding for smaller screens */
        }
    }
</style>

</head>
<body>

<h1>Order History</h1>

<% 
    ArrayList<OrderHistory> OrderHistories = (ArrayList<OrderHistory>) session.getAttribute("OrderHistory123");
    
    if (OrderHistories != null && !OrderHistories.isEmpty()) {
        for (OrderHistory orderhistory : OrderHistories) {
            int orderId = orderhistory.getOrderId();
%>
            <div class="order-history">
                <h2>Order History ID: <%= orderhistory.getOrderHistoryId() %></h2>
                <p><strong>Order ID:</strong> <%= orderId %></p>
                <p><strong>Status:</strong> <%= orderhistory.getStatus() %></p>
                <p><strong>Total Amount:</strong> $<%= orderhistory.getTotalAmount() %></p>
                <p><strong>User ID:</strong> <%= orderhistory.getUserId() %></p>
                <a href="OrderItemServlet?orderId=<%= orderId %>" class="view-link">View Order Items</a>
            </div>
<%
        }
    } else {
%>
        <p>No order history available.</p>
<%
    }
%>

</body>
</html>
