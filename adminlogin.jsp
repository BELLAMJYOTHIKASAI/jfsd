<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        /* General styling */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #111; /* Dark background */
            color: #f4f4f4; /* Light text color */
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Navbar styling to keep it at the top */
        .navbar-container {
            width: 100%;
        }

        /* Center the form container */
        .form-container {
            background-color: #222; /* Darker background for contrast */
            padding: 40px; /* Increase padding */
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px; /* Larger width for the box */
            margin-top: 60px; /* Space between navbar and form */
            text-align: center;
            color: #f4f4f4;
        }

        /* Table and input styling */
        table {
            width: 100%;
            margin-top: 25px;
        }

        td {
            padding: 12px;
            text-align: left;
            font-size: 1.2em; /* Larger font size */
        }

        label {
            font-weight: bold;
            color: #f4f4f4; /* Light color for labels */
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 1.1em; /* Bigger font size */
            border-radius: 4px;
            border: 1px solid #444; /* Darker border */
            background-color: #333; /* Dark input background */
            color: #f4f4f4; /* Light text in input fields */
            box-sizing: border-box;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 10px 20px;
            margin: 8px;
            border: none;
            border-radius: 4px;
            font-size: 1.1em; /* Bigger button font size */
            color: #fff;
            background-color: #c0392b; /* Red button background */
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #a02920; /* Darker red on hover */
        }

        h3 {
            margin-top: 0;
            font-size: 1.8em; /* Bigger header font size */
            color: #e74c3c; /* Red color for header */
        }
    </style>
</head>
<body>

    <!-- Navbar stays at the top -->
    <div class="navbar-container">
        <%@include file="mainnavbar.jsp" %>
    </div>

    <!-- Centered Admin Login Form -->
    <div class="form-container">
        <h3><u>Admin Login</u></h3>
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
