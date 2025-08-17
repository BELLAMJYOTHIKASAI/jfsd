<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manager Events</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733501905/image-2_cdfpuz.jpg') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
        } {
            background-color: #f7f7f7; /* Updated background color */
            color: #333; /* Updated text color */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        h2 {
            color: #6a1b9a; /* Updated heading color */
            text-align: center;
            margin-top: 20px;
        }
        .table-container {
            background-color: #ffffff; /* Updated container color */
            padding: 20px;
            border-radius: 10px;
            max-width: 800px;
            margin: 30px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
            border: 1px solid #6a1b9a; /* Updated border color */
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            color: #333; /* Updated text color */
        }
        th {
            background-color: #6a1b9a; /* Updated header color */
            color: white; /* Updated header text color */
        }
        td {
            background-color: #e8eaf6; /* Updated cell background color */
        }
        tr:nth-child(even) td {
            background-color: #d1c4e9; /* Updated even row color */
        }
        .card {
            display: flex;
            flex-direction: row-reverse;
            background-color: #ffffff; /* Updated card background */
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Soft shadow */
            margin-bottom: 10px;
        }
        .card img {
            width: 300px; /* Adjusted width */
            height: 200px; /* Adjusted height */
            object-fit: cover;
            border-left: 3px solid #6a1b9a; /* Updated border color */
        }
        .card-content {
            padding: 15px;
            flex: 1;
        }
        .card-title {
            font-size: 18px;
            font-weight: bold;
            color: #6a1b9a; /* Updated title color */
            margin-bottom: 8px;
        }
        .card-description {
            font-size: 14px;
            color: #555; /* Updated description color */
            margin-bottom: 8px;
        }
        .card-info {
            font-size: 12px;
            color: #333; /* Updated info text color */
            margin-bottom: 8px;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        .no-events {
            text-align: center;
            font-size: 16px;
            color: #6a1b9a; /* Updated no-events text color */
            margin: 15px 0;
        }
        .back-link {
            display: block;
            text-align: center;
            color: #6a1b9a; /* Updated back-link color */
            font-weight: bold;
            text-decoration: none;
            margin-top: 15px;
        }
        .back-link:hover {
            color: #4a0072; /* Updated hover color */
        }
    </style>
</head>
<body>
    <%@ include file="managernavbar.jsp" %>
    <h2>Events Managed by You</h2>
    <div class="table-container">
        <c:if test="${not empty eventList}">
            <section>
                <div class="grid-container">
                    <c:forEach var="event" items="${eventList}">
                        <div class="card">
                            <!-- Content -->
                            <div class="card-content">
                                <h3 class="card-title">${event.eventName}</h3>
                                <p class="card-description">${event.description}</p>
                                <p class="card-info"><strong>Date:</strong> ${event.date}</p>
                                <p class="card-info"><strong>Location:</strong> ${event.location}</p>
                                <a href="${pageContext.request.contextPath}/viewRegisteredStudents/${event.id}" class="back-link">
                                    <button style="background-color: #6a1b9a; color: white; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer; font-weight: bold;">
                                        View Students
                                    </button>
                                </a>
                            </div>
                            <!-- Image -->
                            <c:if test="${event.eventImg != null}">
                                <img src="displayEventImage?id=${event.id}" alt="${event.eventName}">
                            </c:if>
                            <c:if test="${event.eventImg == null}">
                                <div style="flex: 1; display: flex; justify-content: center; align-items: center; color: #6a1b9a; font-size: 14px;">
                                    No Image
                                </div>
                            </c:if>
                        </div>
                    </c:forEach>
                </div>
            </section>
        </c:if>
        <c:if test="${empty eventList}">
            <p class="no-events">No events managed by you.</p>
        </c:if>
    </div>
</body>
</html>
