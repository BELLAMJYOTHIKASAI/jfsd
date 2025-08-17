
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Drama</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f7f7; /* Light gray background */
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
        }

        header {
            width: 100%;
            background-color: #673ab7; /* Purple */
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
            color: #673ab7; /* Purple */
            border-bottom: 2px solid #673ab7;
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
            border-bottom: 2px solid #673ab7;
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
        Welcome to the Drama Page
    </header>

    <div class="container">
        <section class="section">
            <h2 class="section-title">About Drama</h2>
            <p class="text">Drama is an art form that expresses human emotions and stories through performance. It can be comedic, tragic, or something in between, and it captivates audiences with its power to tell compelling stories.</p>
        </section>

        <section class="section">
            <h2 class="section-title">Featured Drama Performances</h2>
            <div class="grid-container">
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733210573/tragic_orz8v5.jpg" alt="Drama Scene 1">
                    <div class="card-content">
                        <h3 class="card-title">The Tragic Hero</h3>
                        <p class="card-description">A performance that delves into the rise and fall of a protagonist who faces insurmountable challenges.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733210567/comdey_g9nbjd.jpg" alt="Drama Scene 2">
                    <div class="card-content">
                        <h3 class="card-title">Comedy Night</h3>
                        <p class="card-description">A light-hearted show filled with witty dialogue and humorous situations, perfect for a night of laughter.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733210563/The_Mystery_Play_arduoq.jpg" alt="Drama Scene 3">
                    <div class="card-content">
                        <h3 class="card-title">The Mystery Play</h3>
                        <p class="card-description">An intriguing performance filled with twists and suspense that keeps the audience guessing.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733210556/The_Historical_Epic_coh8ih.jpg" alt="Drama Scene 4">
                    <div class="card-content">
                        <h3 class="card-title">The Historical Epic</h3>
                        <p class="card-description">A dramatic retelling of historical events, blending fact and fiction to create an unforgettable experience.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
