
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Arts</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f7f7;
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
        }

        header {
            width: 100%;
            background-color: #6a1b9a;
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
            color: #6a1b9a;
            border-bottom: 2px solid #6a1b9a;
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
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card img {
            width: 100%;
            height: auto;
            border-bottom: 2px solid #6a1b9a;
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
        Welcome to the Arts Page
    </header>

    <div class="container">
        <section class="section">
            <h2 class="section-title">About Arts</h2>
            <p class="text">The arts encompass a variety of creative activities, including painting, sculpture, music, theater, and more. They help express emotions, ideas, and cultural values through different forms.</p>
        </section>

        <section class="section">
            <h2 class="section-title">Featured Artistic Activities</h2>
            <div class="grid-container">
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733208062/painting_rs4was.jpg" alt="Painting">
                    <div class="card-content">
                        <h3 class="card-title">Painting</h3>
                        <p class="card-description">Explore different painting techniques and learn about famous artists and their styles.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733208126/sclupture_u3hguq.jpg" alt="Sculpture">
                    <div class="card-content">
                        <h3 class="card-title">Sculpture</h3>
                        <p class="card-description">Discover the art of creating three-dimensional works using various materials.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733208179/photo_owomca.jpg" alt="Photography">
                    <div class="card-content">
                        <h3 class="card-title">Photography</h3>
                        <p class="card-description">Learn how photography captures moments and emotions through the lens.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733208261/music_zf1j9s.jpg" alt="Music">
                    <div class="card-content">
                        <h3 class="card-title">Music</h3>
                        <p class="card-description">Explore different music genres and the impact of music on emotions and culture.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
