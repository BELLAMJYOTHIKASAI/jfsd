<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Success</title>
    <style>
        body {
            background-color: white; /* Set the background to white */
            color: red; /* Set the text color to red */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h2 {
            color: red; /* Header text in red */
            margin-top: 20px;
        }

        p {
            color: red; /* Paragraph text in red */
            font-size: 18px;
        }

        .button {
            background-color: red; /* Button background color */
            color: white; /* Button text color */
            border: none;
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
        }

        .button:hover {
            background-color: white; /* Change button background to white on hover */
            color: red; /* Change button text to red on hover */
            border: 2px solid red; /* Add a border for better visibility */
        }
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
    <h2>Event Added Successfully!</h2>
    <p>${message}</p> <!-- Display the success message from the controller -->
    <a href="addevent" class="button">Add Another Event</a>
    <a href="adminhome" class="button">Back to Admin Home</a>
</body>
</html>
