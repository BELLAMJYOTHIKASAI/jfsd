<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ExtraCirricular Activities</title>
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
            transition: margin-left 0.3s ease;
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
    <div class="sidebar">
        <img src="data:image/png;base64,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" alt="Logo"> <!-- Replace 'logo.jpg' with the actual logo image source -->
        <a href="managerhome">Home</a>
        <a href="managerprofile">My Profile</a>
        <a href="updatemanager">Update Profile</a>
        <a href="managerEvents">Assigned Events</a>
        <a href="managerlogout">Logout</a>
    </div>

    <div class="content">
        <h2 align="center">ExtraCirricular Activities</h2>
        <!-- Add any additional content here -->
    </div>
</body>
</html>