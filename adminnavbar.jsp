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
            background-color: #000000; /* Black background */
            position: fixed;
            height: 100%;
            overflow: auto;
            text-align: center;
        }

        .sidebar img {
            width: 80%; /* Adjust logo size */
            margin: 20px 0; /* Spacing above and below the logo */
        }

        .sidebar a {
            display: block;
            color: #ffffff; /* White text color for contrast */
            padding: 16px;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.2s ease, background-color 0.2s ease;
        }

        .sidebar a:hover {
            background-color: #ff4d4d; /* Lighter red for hover effect */
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
    <img src="data:image/jpeg;base64,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b+asvgyN95T/AIOCCJ1XMTrHq7b39PurintAb1YHZdDzVhvH8HxBlkLOXYjKOTluZHRegbm5V6lvbVaqpvZkXI3cQD95ui5PSTRojsisqL7dRq1wBwSsyhPMIq7XwO7pN+o0VRQiKqqBgKoCgDkAOAlkrl2IqHk5JYYJBBBBwQRggjiCPAzydOaxan2d9vr0FL+FRPs6g5euu8jocjpIu1v7KDa0at1QuC6U1LslRPX2V3sQ67jgZPsjhOxtTOODRGkREtICIiAIJm+6jdmr6QordPX7qkWZQFTbdgp2SQSQF9YEcDwkrauahWVkQ9Ojt1B/VrHvHB5jPqofygSuViRJQbOf7rV+6pUVualrWSieDshA+LDio5FgAfDMxk65IzuM0fWDsrsbpu8QPbsd7ej7Kq36GUqP0465kI3eSTh4IGsLKpXqLRooz1HOFVeJP9h4kncJ0B2d6jJo2n3j7L3LjFRxvCLx7unn7vDJ4sRncAAMnqpqfbaOUighLt7dWoQ1RuhOAAOigDpmZ+RnZnZHYxwIiJUTEREAREQBERAEREAREQBERAEREAREQBPivSDqyMMqwKsD4gjBHyn3EA5Q0vo9ravWtmzmk7U8niQpwrfqXDectJ0trLqNZ37d5WpkVMY7ymxpsR4ZxubHhkHE1ir2MWh9m5ux+qkf+nNKtXcqcGQhPVQsQqgliQFA4licADqSQJNqdi9p43V2fgaQ/wCnM/q92dWNnUWslN3qL7L1n29k8wowoPXGYdsRyMzmrujBa2tC2G/u6aoTzYD1m82yfOZGImYtEREAREQBERAEREAREQBERAEREAREQBERAKFS6C8c/L/vKZv15H6S7nhUchOnC09PHun5zz/aH4fr/iXXdL7o+QnncL7q/IRsNy19P/D9f8Tz08+6PnLr0dfdHyj0ZfdEbDctfTz7o+cenn3RLn0ZPdEeip7ojKG5benn3RHp590fOXPoqe6I9GT3RGUNy29PPuj5z30/8P1/xLn0ZfdEejr7o+UbDctvT/w/X/E99PHu/WXPcL7o+U97pfdHyEbDctxfryP0n2l2p975Z/iVwo5CexsBEROHRERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQD//2Q==" alt="Admin Logo"> <!-- Add logo path here -->
    <a href="adminhome">Home</a>
    <a href="studentreg">Add Student</a>
    <a href="viewallstudents">View All Students</a>
    <a href="managerreg">Add Manager</a>
    <a href="viewallmanagers">View All Managers</a>
    <a href="addevent">Add Event</a>
    
    <a href="deletestudent">Delete Students</a>
    <a href="deletemanager">Delete Managers</a>
    <a href="adminlogout">Logout</a>
</div>



</body>
</html>
