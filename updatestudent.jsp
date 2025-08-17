<%@page import="com.klef.jfsd.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Student s = (Student)session.getAttribute("student");
    if(s == null) {
        response.sendRedirect("studentsessionfail");
        return;
    }
%>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
    <style>
        body
        {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
        } {
            background-color: #f4f4f4; /* Light gray background */
            color: #333; /* Dark gray text */
            font-family: Arial, sans-serif;
        }

        h3 {
            color: #2c3e50; /* Dark blue */
            text-align: center;
            margin-top: 20px;
        }

        .form-container {
            background-color: #ffffff; /* White background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 700px;
            margin: 30px auto;
            border: 1px solid #ccc; /* Light gray border */
        }

        label {
            display: block;
            color: #2c3e50; /* Dark blue */
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
            background-color: #f9f9f9; /* Light background for inputs */
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 5px;
            box-sizing: border-box; /* Ensures padding is included in width */
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
            background-color: #2c3e50; /* Dark blue */
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
            background-color: #1a252f; /* Darker blue for hover */
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            vertical-align: top;
        }
    </style>
</head>
<body>
  <%@include file="studentnavbar.jsp" %>
    <h3><u>Update Student</u></h3>
    <div class="form-container">
        <form method="post" action="updatestu">
            <table>
                <tr>
                    <td><label for="sid">ID</label></td>
                    <td><input type="number" id="sid" name="sid" value="<%=s.getId()%>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" value="<%=s.getName()%>" required /></td>
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
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE">CSE</option>
                            <option value="AIDS">AIDS</option>
                            <option value="CSIT">CSIT</option>
                            <option value="EEE">EEE</option>
                            <option value="ECE">ECE</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" value="<%=s.getLocation()%>" required /></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" value="<%=s.getEmail() %>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required /></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" value="<%=s.getContact()%>" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
