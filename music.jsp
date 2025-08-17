
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Music</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e8eaf6;
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
        }

        header {
            width: 100%;
            background-color: #1a237e;
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
            color: #1a237e;
            border-bottom: 2px solid #1a237e;
            display: inline-block;
            padding-bottom: 5px;
        }

        .text {
            font-size: 18px;
            margin: 10px 0;
            color: #555;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .card {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card img {
            width: 100%;
            height: auto;
            border-bottom: 2px solid #1a237e;
        }

        .card-content {
            padding: 10px;
        }

        .card-title {
            font-size: 20px;
            font-weight: bold;
            color: #1a237e;
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

        /* Responsive design */
        @media screen and (max-width: 700px) {
            .container {
                width: 100%;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <header>
        Welcome to the Music Page
    </header>

    <div class="container">
        <section class="section">
            <h2 class="section-title">About Music</h2>
            <p class="text">Music is an art form that expresses emotions and ideas through sound. It includes a variety of genres, such as classical, rock, jazz, pop, and more. On this page, we will explore various music events, activities, and resources.</p>
        </section>

        <section class="section">
            <h2 class="section-title">Upcoming Music Events</h2>
            <div class="grid-container">
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733208504/liveconcert_csnuq9.jpg" alt="Concert">
                    <div class="card-content">
                        <h3 class="card-title">Live Concert</h3>
                        <p class="card-description">Join us for a live concert by popular artists. An evening filled with music, entertainment, and excitement.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733208510/musicwork_yg28ch.jpg" alt="Music Workshop">
                    <div class="card-content">
                        <h3 class="card-title">Music Workshop</h3>
                        <p class="card-description">Participate in a hands-on workshop to learn more about music production and performance.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733208516/open_mic_a2a5u9.jpg" alt="Open Mic">
                    <div class="card-content">
                        <h3 class="card-title">Open Mic Night</h3>
                        <p class="card-description">A night for aspiring musicians to showcase their talents and get feedback from an audience.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733208522/night_music_hbs1ya.jpg" alt="Music Festival">
                    <div class="card-content">
                        <h3 class="card-title">Music Festival</h3>
                        <p class="card-description">Celebrate music at our annual festival featuring local and international artists.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
