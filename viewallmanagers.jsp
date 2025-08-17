<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Managers</title>
    <style>
        body {
            margin: 0;
            padding-top: 60px; /* Adjust for navbar height */
            font-family: Arial, sans-serif;
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
            background-color: #f4f4f4; /* Fallback color */
            color: #333; /* Dark text */
        }

        .content {
            margin-left: 200px; /* Sidebar width */
            padding: 20px;
            background: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Soft shadow */
        }

        h3 {
            text-align: center;
            color: #2c3e50; /* Dark blue for headings */
            margin: 20px 0;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.5); /* Subtle shadow for visibility */
        }

        .table-container {
            margin-top: 20px;
            display: flex;
            justify-content: center; /* Center the table */
            overflow-x: auto; /* Scrollable on smaller screens */
        }

        table {
            width: 90%; /* Adjust table width */
            border-collapse: collapse;
            background-color: #ffffff; /* White background */
            color: #333; /* Dark text */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        th {
            background-color: #2c3e50; /* Dark blue for the header */
            color: #fff; /* White text */
            padding: 12px;
            border-radius: 10px 10px 0 0; /* Rounded top corners */
        }

        td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd; /* Light gray border */
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray for even rows */
        }

        tr:hover {
            background-color: #e0e0e0; /* Darker gray on hover */
        }

        #navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 200px; /* Sidebar width */
            height: 100vh;
            background-color: #333; /* Existing color */
            z-index: 1000;
            color: white; /* Existing color */
            text-align: center;
        }
    </style>
</head>
<body>
    <div id="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <div class="content">
        <h3>View All Managers</h3>
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>GENDER</th>
                        <th>CLUB NAME</th>
                        <th>EMAIL</th>
                        <th>LOCATION</th>
                        <th>CONTACT</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${manlist}" var="m">
                        <tr>
                            <td><c:out value="${m.id}"/></td>
                            <td><c:out value="${m.name}"/></td>
                            <td><c:out value="${m.gender}"/></td>
                            <td><c:out value="${m.club}"/></td>
                            <td><c:out value="${m.email}"/></td>
                            <td><c:out value="${m.location}"/></td>
                            <td><c:out value="${m.contact}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
