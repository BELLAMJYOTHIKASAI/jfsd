<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Event</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
            display: flex;
        }

        #navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 200px; /* Sidebar width */
            height: 100vh;
            background-color: #333; /* Sidebar color */
            z-index: 1000;
            color: white; /* Text color */
            text-align: center;
            overflow-y: auto; /* Scrollable content */
        }

        #navbar a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 15px;
            border-bottom: 1px solid #444;
            transition: background-color 0.3s;
        }

        #navbar a:hover {
            background-color: #444;
        }

        .content {
            margin-left: 200px; /* Space for the sidebar */
            flex-grow: 1;
            padding: 20px;
        }

        h2 {
            color: #2c3e50; /* Dark blue */
            text-align: center;
            margin-top: 20px;
        }

        .form-container {
            background-color: #ffffff; /* White */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 700px;
            margin: 0 auto;
            border: 1px solid #ccc; /* Light gray border */
        }

        label {
            display: block;
            color: #2c3e50; /* Dark blue */
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        textarea,
        select,
        input[type="file"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            background-color: #f9f9f9; /* Light background for inputs */
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 5px;
            box-sizing: border-box; /* Ensures padding is included in width */
        }

        textarea {
            resize: none;
        }

        input[type="submit"] {
            background-color: #2c3e50; /* Dark blue button */
            color: #fff;
            border: none;
            padding: 12px 25px;
            margin-top: 15px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
            display: block;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #1a252f; /* Darker blue for hover */
        }
    </style>
</head>
<body>
    <div id="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <div class="content">
        <h2>Add New Event</h2>
        <div class="form-container">
            <form action="insertevent" method="post" enctype="multipart/form-data">
                <label for="ename">Event Name:</label>
                <input type="text" id="ename" name="ename" required>

                <label for="managerId">Select Manager:</label>
                <select id="managerId" name="managerId" required>
                    <c:forEach var="manager" items="${managerList}">
                        <option value="${manager.id}">${manager.name} - ${manager.club}</option>
                    </c:forEach>
                </select>

                <label for="edescription">Description:</label>
                <textarea id="edescription" name="edescription" rows="4" required></textarea>

                <label for="edate">Date:</label>
                <input type="date" id="edate" name="edate" required>

                <label for="elocation">Location:</label>
                <input type="text" id="elocation" name="elocation" required>

                <label for="eimg">Upload Event Image:</label>
                <input type="file" id="eimg" name="eimg" accept="image/*">

                <input type="submit" value="Add Event">
            </form>
        </div>
    </div>
</body>
</html>
