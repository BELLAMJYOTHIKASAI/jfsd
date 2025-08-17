<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed;
            background-size: cover;
            padding-left: 200px; /* Space for the sidebar */
        }

        #navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 200px; /* Sidebar width */
            height: 100vh;
            background-color: #333; /* Sidebar color */
            z-index: 1000;
            color: white; /* Text color */
            text-align: center;
            overflow-y: auto; /* Scrollable content */
        }

        #navbar a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 15px;
            border-bottom: 1px solid #444;
            transition: background-color 0.3s;
        }

        #navbar a:hover {
            background-color: #444;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 700px;
            margin: 30px auto;
            border: 1px solid #ccc;
        }

        h3 {
            color: #ffffff;
            text-align: center;
            margin-top: 20px;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.5);
        }

        label {
            display: block;
            color: #2c3e50;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        .button-container {
            text-align: center;
            margin-top: 15px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #2c3e50;
            color: #fff;
            border: none;
            padding: 12px 25px;
            margin: 10px 5px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #1a252f;
        }
    </style>
</head>
<body>
    <div id="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <div class="form-container">
        <h3><u>Student Registration</u></h3>
        <form method="post" action="insertstudent">
            <table>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" required /></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <div style="display: flex; gap: 10px; align-items: center;">
                            <input type="radio" id="male" name="sgender" value="MALE" required />
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="sgender" value="FEMALE" required />
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="sgender" value="OTHERS" required />
                            <label for="others">Others</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdob" name="sdob" required /></td>
                </tr>
                <tr>
                    <td><label for="sdepartment">Select Department</label></td>
                    <td>
                        <select id="sdepartment" name="sdepartment" required>
                            <option value="">---Select---</option>
                            <option value="CSE">CSE</option>
                            <option value="ECE">ECE</option>
                            <option value="EEE">EEE</option>
                            <option value="Mechanical">Mechanical</option>
                            <option value="Civil">Civil</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required /></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required /></td>
                </tr>
                <tr>
                    <td><label for="saddress">Enter Address</label></td>
                    <td><input type="text" id="saddress" name="saddress" required /></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
