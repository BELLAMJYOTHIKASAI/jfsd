<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About KL University</title>
    <style>
        /* Style for the navbar */
        .navbar-container {
            width: 200px; /* Adjust this width as needed */
            float: left;
            background-color: #333;
            color: white;
            height: 100vh; /* Make navbar full height */
        }

        /* Full-screen background image styling */
        .content {
            margin-left: 200px; /* Offset by navbar width */
            position: relative;
            min-height: 100vh; /* Full viewport height */
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZlhpzeaj898b8NFxPeA_xBM7vs0fwcexJwg&s');
            background-size: cover; /* Make image cover entire div */
            background-position: center;
            color: white; /* Set text color to contrast the background */
            padding: 40px;
            box-sizing: border-box;
        }

        /* Styling text overlay */
        .content h3,
        .content p {
            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent background for better readability */
            padding: 10px;
            border-radius: 5px;
            margin: 20px 0;
            text-align: center;
        }

        /* Footer styling */
        .footer {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 10px;
            border-radius: 5px;
            color: white;
            margin-top: 20px;
            position: relative; /* Allows it to stay within the content area */
        }
    </style>
</head>
<body>
    <div class="navbar-container">
        <%@include file="mainnavbar.jsp" %>
        <ul style="list-style: none; padding: 20px;">
            <li><a href="#" style="color: white;">Home</a></li>
            <li><a href="#" style="color: white;">Admin Login</a></li>
            <li><a href="#" style="color: white;">Student Login</a></li>
            <li><a href="#" style="color: white;">About</a></li>
        </ul>
    </div>

    <div class="content">
        <h3>About KL Deemed to be University</h3>
        <p>KLEF Deemed to be University was established in 1980-81, as KL College of Engineering, which was upgraded to KL College of Engineering Autonomous in 2006 by UGC, and was declared as a Deemed to be University in 2009 by UGC, MHRD Govt. of India. In 2012 as a Deemed to be University the institution was accredited by NAAC with A Grade and later in 2018, was re-accredited by NAAC with A++ grade. In 2019 UGC, MHRD declared this institution as Category I Institution.</p>

        <h3>KLEF | Activities</h3>
        <p>The KLEF assures quality in teaching, academic environment, research strength, through the state of the art Infrastructural facilities. The programmes offered across the KLEF are innovative, flexible, and cutting-edge. Our curriculum design involves feedback from experts in the private, public sectors, parents, and civil society. The curriculum is designed to make the student either go for higher studies, or seek placement, or do research or to become entrepreneurs after their study.</p>

        <p>Skilling is the main focus of our teaching learning process. Active Learning Methods (ALM), Lab Taken to Class (LTC), Project Based Labs (PBL) are some of the teaching pedagogies used for making the students learn by doing. This will help to learn concepts and strategies that can be applied to working life immediately, significantly enhancing their career prospects.</p>

        <p>The students are encouraged to debate, discuss, and analyze. The co-curricular and extracurricular activities are given prominence in the curriculum. Students are evaluated on a continuous basis throughout the semester.</p>
        
        <p>Our Academic Structure offers a lot of Flexibility for students. Research is a part of curriculum at both undergraduate and higher degree programs. There are a number of interdisciplinary courses, where departments work together to create strong, new programs where fields converge to suit the current industrial and societal needs.</p>

        <!-- Footer at the bottom of content -->
        <div class="footer">
            &copy; 2024 KL University. All rights reserved.
        </div>
    </div>
</body>
</html>