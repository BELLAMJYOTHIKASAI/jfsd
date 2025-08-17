<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Available Events</title>
    <style>
        /* Existing CSS styles */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
        }{
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
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .section-title {
            font-size: 28px;
            margin-bottom: 10px;
            color: #6a1b9a;
            border-bottom: 2px solid #6a1b9a;
            display: inline-block;
            padding-bottom: 5px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }

        .card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-bottom: 3px solid #6a1b9a;
        }

        .card-content {
            padding: 15px;
        }

        .card-title {
            font-size: 20px;
            font-weight: bold;
            color: #6a1b9a;
            margin-bottom: 10px;
        }

        .card-description {
            font-size: 16px;
            color: #555;
            margin-bottom: 10px;
        }

        .card-info {
            font-size: 14px;
            color: #333;
            margin-bottom: 10px;
        }

        .card button {
            background-color: #6a1b9a;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            display: block;
            text-align: center;
            margin: 0 auto;
        }

        .card button:hover {
            background-color: #4a0072;
        }

        .no-events {
            text-align: center;
            font-size: 18px;
            color: #6a1b9a;
        }
    </style>
</head>
<body>
<div class="navbar">
    <%@ include file="studentnavbar.jsp" %>
</div>

<header>
    Available Events
</header>

<div class="container">
    <c:if test="${not empty eventList}">
        <section>
            <h2 class="section-title">Upcoming Events</h2>
            <div class="grid-container">
                <c:forEach var="event" items="${eventList}">
                    <div class="card">
                        <!-- Image -->
                        <img src="displayEventImage?id=${event.id}" alt="${event.eventName}">
                        <!-- Content -->
                        <div class="card-content">
                            <h3 class="card-title">${event.eventName}</h3>
                            <p class="card-description">${event.description}</p>
                            <p class="card-info"><strong>Date:</strong> ${event.date}</p>
                            <p class="card-info"><strong>Location:</strong> ${event.location}</p>
                            <form action="registereventsuccess.jsp" method="post">
                                <input type="hidden" name="eventId" value="${event.id}">
                                <input type="hidden" name="studentId" value="${student.id}">
                                <button type="submit">Register</button>
                            </form>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </section>
    </c:if>

    <c:if test="${empty eventList}">
        <p class="no-events">No events available for registration.</p>
    </c:if>
</div>
</body>
</html>
