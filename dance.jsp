
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dance</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5; /* Light gray background */
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
        }

        header {
            width: 100%;
            background-color: #ff4081; /* Pinkish color for dance */
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
            color: #ff4081; /* Pinkish color */
            border-bottom: 2px solid #ff4081;
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
            border-bottom: 2px solid #ff4081;
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
        Welcome to the Dance Page
    </header>

    <div class="container">
        <section class="section">
            <h2 class="section-title">About Dance</h2>
            <p class="text">Dance is an art form that involves movement of the body, usually to music, to express emotions or tell a story. It comes in many styles, from classical ballet to modern dance and everything in between.</p>
        </section>

        <section class="section">
            <h2 class="section-title">Featured Dance Performances</h2>
            <div class="grid-container">
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733212771/Ballet_cugcil.jpg" alt="Ballet Performance">
                    <div class="card-content">
                        <h3 class="card-title">Ballet</h3>
                        <p class="card-description">Ballet is a highly technical form of dance that is known for its grace, precision, and expressive movement.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733212777/Hip-hop_ddymbu.jpg" alt="Hip-hop Dance">
                    <div class="card-content">
                        <h3 class="card-title">Hip-hop</h3>
                        <p class="card-description">Hip-hop dance includes breaking, locking, and popping. It has a vibrant and energetic style that embodies street culture.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733212783/Salsa_nmcicn.jpg" alt="Salsa Dance">
                    <div class="card-content">
                        <h3 class="card-title">Salsa</h3>
                        <p class="card-description">Salsa is a lively dance that originated in Latin America, known for its energetic and rhythmic steps.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733212789/Contemporary_Dance_nhge3a.jpg" alt="Contemporary Dance">
                    <div class="card-content">
                        <h3 class="card-title">Contemporary Dance</h3>
                        <p class="card-description">Contemporary dance combines elements of ballet, modern, and jazz dance to create fluid and expressive movements.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
