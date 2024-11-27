<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.tap.dto.OrderItem" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Items</title><style>
    body {
        font-family: Arial, sans-serif;
        background-color: #e9ecef; /* Light gray background */
        margin: 0;
        padding: 20px;
    }
    
    .container {
        max-width: 900px;
        margin: auto;
        background: #ffffff; /* White background for the container */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    }

    h1 {
        text-align: center;
        color: #4A90E2; /* Bright blue */
        margin-bottom: 20px;
    }

    .order-item {
        border-bottom: 2px solid #4CAF50; /* Green bottom border */
        padding: 15px 10px;
        display: flex;
        flex-direction: column;
        margin-bottom: 15px;
        transition: background-color 0.3s; /* Smooth background color transition */
    }

    .order-item:hover {
        background-color: #f0f8ff; /* Light blue on hover */
    }

    .order-item:last-child {
        border-bottom: none; /* Remove border from last item */
    }

    .order-item p {
        margin: 5px 0;
        color: #555; /* Dark gray text */
    }

    .item-label {
        font-weight: bold;
        color: #333; /* Darker text for labels */
    }

    .item-value {
        margin-left: 10px;
        color: #007BFF; /* Bootstrap primary blue for values */
        font-style: italic; /* Italic for item values */
    }

    @media (max-width: 600px) {
        .container {
            padding: 15px; /* Adjust padding for smaller screens */
        }
        
        .order-item {
            padding: 12px 8px; /* Adjust padding for smaller items */
        }
    }
</style>

</head>
<body>

<div class="container">
    <h1>Order Items</h1>

    <% 
    ArrayList<OrderItem> orderitemlists = (ArrayList<OrderItem>) session.getAttribute("OrderItemList");
    if (orderitemlists != null && !orderitemlists.isEmpty()) {
        for (OrderItem orderItem : orderitemlists) {
    %>
        <div class="order-item">
            <p><span class="item-label">Menu ID:</span> <span class="item-value"><%= orderItem.getMenuId() %></span></p>
            <p><span class="item-label">Order ID:</span> <span class="item-value"><%= orderItem.getOrderId() %></span></p>
            <p><span class="item-label">Order Item ID:</span> <span class="item-value"><%= orderItem.getOrderItemId() %></span></p>
            <p><span class="item-label">Quantity:</span> <span class="item-value"><%= orderItem.getQuantity() %></span></p>
            <p><span class="item-label">Sub Total:</span> <span class="item-value">$<%= orderItem.getSubTotal() %></span></p>
        </div>
    <% 
        }
    } else {
    %>
        <p>No items to display.</p>
    <% 
    }
    %>
</div>

</body>
</html>
