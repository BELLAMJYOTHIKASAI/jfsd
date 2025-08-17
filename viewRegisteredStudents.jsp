<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registered Students</title>
    <style>
        body {
            background-color: #f7f7f7; /* Light gray background */
            color: #333; /* Dark text color */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        h2 {
            color: #6a1b9a; /* Purple color for the heading */
            text-align: center;
            margin-top: 20px;
        }
        .table-container {
            background-color: #ffffff; /* White background for the container */
            padding: 20px;
            border-radius: 10px;
            max-width: 800px;
            margin: 30px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Light shadow for a subtle effect */
            border: 1px solid #6a1b9a; /* Border color matching the heading */
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            color: #333; /* Text color for the table */
        }
        th {
            background-color: #6a1b9a; /* Purple background for header */
            color: white; /* White text for table header */
        }
        td {
            background-color: #e8eaf6; /* Light blue background for table cells */
        }
        tr:nth-child(even) td {
            background-color: #d1c4e9; /* Purple shade for even rows */
        }
        .no-students {
            text-align: center;
            font-size: 16px;
            color: #6a1b9a; /* Purple color for the no-students message */
            margin: 20px 0;
        }
        .back-link {
            display: block;
            text-align: center;
            color: #6a1b9a; /* Purple color for the link */
            font-weight: bold;
            text-decoration: none;
            margin-top: 15px;
            padding: 10px 20px;
            border: 2px solid #6a1b9a; /* Border color to match the theme */
            border-radius: 4px;
            display: inline-block;
            background-color: #ffffff; /* White background for the button */
        }
        .back-link:hover {
            color: #4a0072; /* Darker shade on hover */
            border-color: #4a0072; /* Darker border on hover */
            background-color: #e8eaf6; /* Light blue background on hover */
        }
    </style>
</head>
<body>
    <%@ include file="managernavbar.jsp" %>
    <h2>Registered Students for Event</h2>
    <div class="table-container">
        <c:if test="${not empty registeredStudents}">
            <table>
                <thead>
                    <tr>
                        <th>Student ID</th>
                        <th>Student Name</th>
                        <th>Email</th>
                        <th>Contact</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${registeredStudents}">
                        <tr>
                            <td>${student.id}</td>
                            <td>${student.name}</td>
                            <td>${student.email}</td>
                            <td>${student.contact}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${empty registeredStudents}">
            <p class="no-students">No students registered for this event.</p>
        </c:if>
    </div>
    <div style="text-align: center; margin: 20px 0;">
        <a href="${pageContext.request.contextPath}/managerEvents" class="back-link">
            Back to Events
        </a>
    </div>
</body>
</html>
