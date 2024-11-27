<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    /* Base styles */
   body {
        font-family: Arial, sans-serif;
        background-image: url('images/bglogin.jpg'); /* Replace 'your_image.jpg' with the actual path to your image */
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
        padding: 20px;
        max-width: 400px;
        width: 100%;
        box-sizing: border-box;
    }

    h1 {
        margin-bottom: 20px;
        text-align: center;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    td {
        padding: 10px;
    }

    input[type="text"],
    input[type="password"] {
        width: calc(100% - 22px);
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
        box-sizing: border-box;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    /* Color theme options */
    .dark-theme {
        background-color: pink;
        color: black;
        .container {
            background: pink;
        }
        input[type="text"],
        input[type="password"] {
            background-color: #333;
        }
    }

    .blue-theme {
        background-color: #f5f5f5;
        .container {
            background: #e8f0fe;
        }
        input[type="text"],
        input[type="password"] {
            background-color: #f0f5ff;
        }
    }

    .purple-theme {
        background-color: #f5f5f5;
        .container {
            background: #f0e6fa;
        }
        input[type="text"],
        input[type="password"] {
            background-color: #f5f0ff;
        }
    }

    .gray-theme {
        background-color: pink;
        .container {
            background: pink;
        }
        input[type="text"],
        input[type="password"] {
            background-color: #f5f5f5;
        }
    }
</style>
</head>
<body class="dark-theme"> <div class="container">
        <h1>Login Page</h1>
        <form action="login">
            <table>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" required></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Login"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>