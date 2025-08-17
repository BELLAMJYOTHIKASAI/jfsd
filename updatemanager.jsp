<%@page import="com.klef.jfsd.model.Manager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Manager m = (Manager)session.getAttribute("manager");
    if(m == null) {
        response.sendRedirect("studentsessionfail");
        return;
    }
%>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Manager</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body 
         {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733501905/image-2_cdfpuz.jpg') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
        } {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
        }{
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
            background-color: #ffffff; /* White */
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
            background-color: #2c3e50; /* Dark blue button */
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
  <%@include file="managernavbar.jsp" %>
    <h3><u>Update Manager</u></h3>
    <div class="form-container">
       <form method="post" action="updatemanager">

            <table>
                <tr>
                    <td><label for="mid">ID</label></td>
                    <td><input type="number" id="mid" name="mid" value="<%=m.getId()%>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="mname">Enter Name</label></td>
                    <td><input type="text" id="mname" name="mname" value="<%=m.getName()%>" required /></td>
                </tr>
               <tr>
    <td><label>Select Gender</label></td>
    <td>
        <div style="display: flex; gap: 10px; align-items: center;">
            <input type="radio" id="male" name="mgender" value="MALE" required />
            <label for="male">Male</label>
            <input type="radio" id="female" name="mgender" value="FEMALE" required />
            <label for="female">Female</label>
            <input type="radio" id="others" name="mgender" value="OTHERS" required />
            <label for="others">Others</label>
        </div>
    </td>
</tr>

                <tr>
                    <td><label for="mdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="mdob" name="mdob" required /></td>
                </tr>
                <tr>
                    <td><label for="mclub">Club</label></td>
                    <td>
                        <select id="mclub" name="mclub" disabled required>
						    <option value="Standup" <%=m.getClub().equals("Standup") ? "selected" : ""%>>Standup</option>
						    <option value="Sports" <%=m.getClub().equals("Sports") ? "selected" : ""%>>Sports</option>
						    <option value="Vyuha" <%=m.getClub().equals("Vyuha") ? "selected" : ""%>>Vyuha</option>
						    <option value="Narthana" <%=m.getClub().equals("Narthana") ? "selected" : ""%>>Narthana</option>
						    <option value="Swara" <%=m.getClub().equals("Swara") ? "selected" : ""%>>Swara</option>
						    <option value="Radio" <%=m.getClub().equals("Radio") ? "selected" : ""%>>Radio</option>
						    <option value="NSS" <%=m.getClub().equals("NSS") ? "selected" : ""%>>NSS</option>
						</select>
						<input type="hidden" id="mclubHidden" name="mclub" value="<%=m.getClub()%>">

                    </td>
                </tr>
                <tr>
                    <td><label for="mlocation">Enter Location</label></td>
                    <td><input type="text" id="mlocation" name="mlocation" value="<%=m.getLocation()%>" required /></td>
                </tr>
                <tr>
                    <td><label for="memail">Enter Email ID</label></td>
                    <td><input type="email" id="memail" name="memail" value="<%=m.getEmail() %>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="mpwd">Enter Password</label></td>
                    <td><input type="password" id="mpwd" name="mpwd" required /></td>
                </tr>
                <tr>
                    <td><label for="mcontact">Enter Contact</label></td>
                    <td><input type="number" id="mcontact" name="mcontact" value="<%=m.getContact()%>" required /></td>
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
