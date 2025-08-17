<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f7f7;
            color: #333;
            line-height: 1.6;
        }

        .navbar {
            width: 100%;
        }

        header {
            background-color: #6a1b9a;
            color: white;
            padding: 10px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }

        .container {
            width: 90%;
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .message {
            font-size: 24px;
            font-weight: bold;
            color: #6a1b9a;
            margin-bottom: 20px;
        }

        .back-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #6a1b9a;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-weight: bold;
        }

        .back-link:hover {
            background-color: #4a0072;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <%@ include file="studentnavbar.jsp" %>
    </div>

    <header>
        Registration Successful
    </header>

    <div class="container">
        <div class="message">Registration Successful!</div>
        <a href="viewevents.jsp" class="back-link">Back to View Events</a>
    </div>
</body>
</html>
