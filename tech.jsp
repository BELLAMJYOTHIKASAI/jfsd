
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tech</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3f4f6; /* Light gray background */
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
        }

        header {
            width: 100%;
            background-color: #6200ea; /* Purple for innovation */
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
            color: #6200ea; /* Matching purple */
            border-bottom: 2px solid #6200ea;
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
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
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
            border-bottom: 2px solid #6200ea;
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
        Welcome to the Tech Page
    </header>

    <div class="container">
        <section class="section">
            <h2 class="section-title">About Tech</h2>
            <p class="text">Explore technical events, innovations, and advancements in various fields of technology. Stay updated with the latest trends and breakthroughs in tech.</p>
        </section>

        <section class="section">
            <h2 class="section-title">Featured Tech Events</h2>
            <div class="grid-container">
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733213670/AI_and_Machine_Learning_Summit_cqhgxp.png">
                    <div class="card-content">
                        <h3 class="card-title">AI and Machine Learning Summit</h3>
                        <p class="card-description">Join industry experts as they discuss the future of AI and its transformative impact on various sectors.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733213675/Tech_Innovation_Workshop_vbixe6.jpg">
                    <div class="card-content">
                        <h3 class="card-title">Tech Innovation Workshop</h3>
                        <p class="card-description">Hands-on workshop to learn and innovate with the latest tech tools and practices.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733213681/Cybersecurity_Conference_jzmdpm.jpg">
                    <div class="card-content">
                        <h3 class="card-title">Cybersecurity Conference</h3>
                        <p class="card-description">Discuss and explore the best practices and strategies to safeguard information and digital assets.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733213690/download_lb8lql.jpg">
                    <div class="card-content">
                        <h3 class="card-title">Blockchain and Crypto Forum</h3>
                        <p class="card-description">Dive into blockchain technology and explore opportunities in the cryptocurrency market.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
