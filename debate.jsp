
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Debate</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f8f8; /* Light gray background */
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
        }

        header {
            width: 100%;
            background-color: #3f51b5; /* Deep blue for a serious tone */
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
            color: #3f51b5; /* Deep blue */
            border-bottom: 2px solid #3f51b5;
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
            border-bottom: 2px solid #3f51b5;
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
        Welcome to the Debate Page
    </header>

    <div class="container">
        <section class="section">
            <h2 class="section-title">About Debate</h2>
            <p class="text">Debating is an intellectual sport that develops critical thinking, public speaking, and the ability to construct persuasive arguments. Here, we highlight key competitions, workshops, and activities.</p>
        </section>

        <section class="section">
            <h2 class="section-title">Upcoming Debate Competitions</h2>
            <div class="grid-container">
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733213163/Regional_Debate_Contest_ldwrjt.jpg">
                    <div class="card-content">
                        <h3 class="card-title">Regional Debate Contest</h3>
                        <p class="card-description">Join us for the regional debate contest, where participants from various schools will compete in persuasive discussions.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733213171/workshop_gdre1b.jpg">
                    <div class="card-content">
                        <h3 class="card-title">Debate Workshop</h3>
                        <p class="card-description">A workshop aimed at sharpening the debating skills of participants, providing training in argument construction and public speaking.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733213177/National_Debate_Finals_gcqw1d.jpg">
                    <div class="card-content">
                        <h3 class="card-title">National Debate Finals</h3>
                        <p class="card-description">The national finals where the top debaters from across the country face off for the championship title.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://res.cloudinary.com/def2d6aqn/image/upload/v1733213183/Preparation_Session_krubiw.jpg">
                    <div class="card-content">
                        <h3 class="card-title">Preparation Session</h3>
                        <p class="card-description">A preparatory session for students looking to participate in upcoming debate events, focusing on strategies and practice rounds.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
