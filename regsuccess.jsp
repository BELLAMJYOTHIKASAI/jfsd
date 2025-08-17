<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    
    <style>
        body {
            background-color: #F5EFFF; /* Matches your other JSP files */
            font-family: Arial, sans-serif;
            text-align: center; /* Center align text */
        }

        .success-message {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            background-color: #DFF2BF; /* Light green background */
            border: 1px solid #A9D18E;
            border-radius: 10px;
        }

        .success-message h3 {
            color: #4F8A10; /* Dark green color */
            font-weight: bold;
        }

        .success-message p {
            font-size: 16px;
            color: #4F8A10;
        }

        .success-message a,
        .success-message button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #4F8A10; /* Dark green button */
            color: white;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .success-message button:hover {
            background-color: #3D6D0C; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <div class="success-message">
        <h3><c:out value="${message}"/></h3>
        <button onclick="window.location.href='studentreg';">Register Another Student</button>
    </div>
</body>
</html>
