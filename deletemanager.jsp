<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Manager</title>
    <style>
        body{
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
        }
        
         {
            margin: 0;
            padding-top: 60px; /* Adjust for navbar height */
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light gray background */
        }

        .content {
            margin-left: 200px; /* Sidebar width */
            padding: 20px;
        }

        h3 {
            text-align: center;
            color: #2c3e50; /* Dark blue for headings */
            margin: 20px 0;
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

        a.delete-button {
            display: inline-block;
            padding: 8px 12px;
            background-color: #e74c3c; /* Red color for delete */
            color: #fff; /* White text */
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.2s;
            font-weight: bold;
        }

        a.delete-button:hover {
            background-color: #c0392b; /* Darker red on hover */
            transform: scale(1.1); /* Slight zoom effect */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3); /* Subtle text shadow */
        }

        /* Navbar styling */
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
        }
    </style>
</head>
<body>
    <div id="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <div class="content">
        <h3>Delete Manager</h3>
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>GENDER</th>
                        <th>DATE OF BIRTH</th>
                        <th>CLUB</th>
                        <th>EMAIL</th>
                        <th>LOCATION</th>
                        <th>CONTACT</th>
                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${manlist}" var="m">
                        <tr>
                            <td><c:out value="${m.id}"/></td>
                            <td><c:out value="${m.name}"/></td>
                            <td><c:out value="${m.gender}"/></td>
                            <td><c:out value="${m.dateOfBirth}"/></td>
                            <td><c:out value="${m.club}"/></td>
                            <td><c:out value="${m.email}"/></td>
                            <td><c:out value="${m.location}"/></td>
                            <td><c:out value="${m.contact}"/></td>
                            <td>
                                <a class="delete-button" href="<c:url value='deletemanager/${m.id}' />">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
