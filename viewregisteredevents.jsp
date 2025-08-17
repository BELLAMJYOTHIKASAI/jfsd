<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registered Events</title>
    <style>
        body
        {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
        } {
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
            width: 70%; /* Reduced width */
            max-width: 900px; /* Adjusted max-width */
            margin: 20px auto;
            padding: 15px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .section-title {
            font-size: 24px; /* Slightly smaller title */
            margin-bottom: 10px;
            color: #6a1b9a;
            border-bottom: 2px solid #6a1b9a;
            display: inline-block;
            padding-bottom: 5px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 15px; /* Adjusted gap */
        }

        .card {
            display: flex;
            flex-direction: row-reverse;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card img {
            width: 300px; /* Adjusted width */
            height: 180px; /* Adjusted height */
            object-fit: cover;
            border-left: 3px solid #6a1b9a; /* Border to separate image */
        }

        .card-content {
            padding: 10px; /* Reduced padding */
            flex: 1; /* Allow content to take up remaining space */
        }

        .card-title {
            font-size: 18px; /* Slightly smaller title */
            font-weight: bold;
            color: #6a1b9a;
            margin-bottom: 8px; /* Reduced margin */
        }

        .card-description {
            font-size: 14px; /* Slightly smaller description */
            color: #555;
            margin-bottom: 8px; /* Reduced margin */
        }

        .card-info {
            font-size: 12px; /* Slightly smaller info text */
            color: #333;
            margin-bottom: 8px; /* Reduced margin */
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .no-events {
            text-align: center;
            font-size: 16px; /* Adjusted font size */
            color: #6a1b9a;
            margin: 15px 0; /* Reduced margin */
        }

        .back-link {
            display: block;
            text-align: center;
            color: #6a1b9a;
            font-weight: bold;
            text-decoration: none;
            margin-top: 15px; /* Adjusted margin */
        }

        .back-link:hover {
            color: #4a0072;
        }
    </style>
</head>
<body>
<div class="navbar">
    <%@ include file="studentnavbar.jsp" %>
</div>

<header>
    Your Registered Events
</header>

<div class="container">
    <c:if test="${not empty registeredEvents}">
        <section>
            <h2 class="section-title">Registered Events</h2>
            <div class="grid-container">
                <c:forEach var="event" items="${registeredEvents}">
                    <div class="card">
                        <!-- Content -->
                        <div class="card-content">
                            <h3 class="card-title">${event.eventName}</h3>
                            <p class="card-description">${event.description}</p>
                            <p class="card-info"><strong>Date:</strong> ${event.date}</p>
                            <p class="card-info"><strong>Location:</strong> ${event.location}</p>
                        </div>
                        <!-- Image -->
                        <img src="displayEventImage?id=${event.id}" alt="${event.eventName}">
                    </div>
                </c:forEach>
            </div>
        </section>
    </c:if>

    <c:if test="${empty registeredEvents}">
        <p class="no-events">You have not registered for any events yet.</p>
    </c:if>
</div>

<a href="/viewevents" class="back-link">Back to Available Events</a>
</body>
</html>
