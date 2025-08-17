
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sports</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
        }

        header {
            width: 100%;
            background-color: #4CAF50;
            padding: 10px 0;
            text-align: center;
            color: white;
            font-size: 24px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .container {
            width: 80%;
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .section {
            margin-bottom: 20px;
        }

        .section-title {
            font-size: 28px;
            margin-bottom: 10px;
            color: #4CAF50;
            border-bottom: 2px solid #4CAF50;
            display: inline-block;
            padding-bottom: 5px;
        }

        .text {
            font-size: 18px;
            margin: 10px 0;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
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
            height: auto;
            border-bottom: 2px solid #4CAF50;
        }

        .card-content {
            padding: 10px;
        }

        .card-title {
            font-size: 20px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
        }

        .card-description {
            font-size: 16px;
            color: #555;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <header>
        Welcome to the Sports Page
    </header>

    <div class="container">
        <section class="section">
            <h2 class="section-title">About Sports</h2>
            <p class="text">Sports are an essential part of human culture, promoting physical fitness, teamwork, and a competitive spirit. Here, we share information about various sports activities and events.</p>
        </section>

        <section class="section">
            <h2 class="section-title">Featured Sports</h2>
            <div class="grid-container">
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733207556/football_wzge6p.jpg" alt="Football">
                    <div class="card-content">
                        <h3 class="card-title">Football</h3>
                        <p class="card-description">Football, known as soccer in some regions, is one of the most popular sports worldwide.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733207677/basketball_vl9un5.jpg" alt="Basketball">
                    <div class="card-content">
                        <h3 class="card-title">Basketball</h3>
                        <p class="card-description">Basketball is played with two teams of five players each, aiming to score points by shooting the ball through the opposing team's hoop.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733207836/tennis_y90ibr.jpg" alt="Tennis">
                    <div class="card-content">
                        <h3 class="card-title">Tennis</h3>
                        <p class="card-description">Tennis is a sport played on various surfaces, where players use a racket to hit a ball over a net.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733207900/swimming_mgkdkc.jpg" alt="Swimming">
                    <div class="card-content">
                        <h3 class="card-title">Swimming</h3>
                        <p class="card-description">Swimming is a full-body workout that helps improve stamina and muscle strength while providing a low-impact activity.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
