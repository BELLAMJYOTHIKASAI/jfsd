
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }

        .sidebar {
            width: 220px;
            background-color: #000000;
            position: fixed;
            height: 100%;
            overflow: auto;
            text-align: center;
        }

        .sidebar img {
            width: 80%;
            margin: 20px 0;
        }

        .sidebar a {
            display: block;
            color: #ffffff;
            padding: 16px;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.2s ease, background-color 0.2s ease;
        }

        .sidebar a:hover {
            background-color: #ff4d4d;
            color: #ffffff;
        }

        .content {
            margin-left: 240px;
            padding: 20px;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            transition: margin-left 0.3s ease;
        }

        /* Heading animation */
        .heading {
            font-size: 36px;
            color: #8B0000;
            margin-bottom: 20px;
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Circular menu styles */
        .menu {
            position: relative;
            width: 600px; /* Increased size */
            height: 600px; /* Increased size */
            border-radius: 50%;
            background-color: #8B0000;
            border: 5px solid #000000;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .menu-item {
            position: absolute;
            width: 100px; /* Larger item size */
            height: 100px; /* Larger item size */
            border-radius: 50%;
            background-color: #000000;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-size: 20px; /* Larger font */
            text-decoration: none;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        .menu-item:hover {
            background-color: #FF0000;
            transform: scale(1.2);
        }

        /* Position items in a circular layout */
        .menu-item:nth-child(1) { top: 5%; left: 50%; transform: translate(-50%, -50%); }
        .menu-item:nth-child(2) { top: 25%; left: 85%; transform: translate(-50%, -50%); }
        .menu-item:nth-child(3) { top: 50%; left: 100%; transform: translate(-50%, -50%); }
        .menu-item:nth-child(4) { top: 75%; left: 85%; transform: translate(-50%, -50%); }
        .menu-item:nth-child(5) { top: 90%; left: 50%; transform: translate(-50%, -50%); }
        .menu-item:nth-child(6) { top: 75%; left: 15%; transform: translate(-50%, -50%); }
        .menu-item:nth-child(7) { top: 50%; left: 0%; transform: translate(-50%, -50%); }
        .menu-item:nth-child(8) { top: 25%; left: 15%; transform: translate(-50%, -50%); }

        /* Central button */
        .menu-center {
            position: absolute;
            width: 150px; /* Larger center button */
            height: 150px; /* Larger center button */
            border-radius: 50%;
            background-color: #000000;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 24px; /* Larger font */
            font-weight: bold;
            color: #FF0000;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .menu-center:hover {
            background-color: #FF0000;
            color: #000000;
            transform: translate(-50%, -50%) scale(1.1);
        }

        /* Responsive Design */
        @media screen and (max-width: 700px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }
            .sidebar a {
                float: left;
                width: 100%;
            }
            .content {
                margin-left: 0;
            }
        }

        @media screen and (max-width: 400px) {
            .sidebar a {
                text-align: center;
                float: none;
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <img src="https://res.cloudinary.com/deleaagvo/image/upload/v1733203579/lahariproject_mblngl.jpg" alt="Logo">
        <a href="/" class="active">Home</a>
        <a href="adminlogin">Admin Login</a>
        <a href="studentlogin">Student Login</a>
        <a href="managerlogin">Manager Login</a>
        <a href="about">About</a>
    </div>

    <!-- Content area -->
    <div class="content">
        <!-- Heading -->
        <div class="heading">Extracurricular Activities</div>

        <!-- Circular menu -->
        <div class="menu">
            <div class="menu-center">Menu</div>
            <a href="sports.jsp" class="menu-item">Sports</a>
            <a href="arts.jsp" class="menu-item">Arts</a>
            <a href="music.jsp" class="menu-item">Music</a>
            <a href="drama.jsp" class="menu-item">Drama</a>
            <a href="dance.jsp" class="menu-item">Dance</a>
            <a href="debate.jsp" class="menu-item">Debate</a>
            <a href="tech.jsp" class="menu-item">Tech</a>
        </div>
    </div>
</body>
</html>
