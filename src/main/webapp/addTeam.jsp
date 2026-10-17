<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String admin = (String) session.getAttribute("admin");

    if (admin == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Add Team - Cricket Tournament</title>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f6f8;
        }

        .navbar {
            background: #12372A;
            color: white;
            padding: 20px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h2 {
            margin: 0;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
        }

        .container {
            width: 450px;
            margin: 60px auto;
            background: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 3px 15px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #12372A;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #12372A;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #1d5943;
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #12372A;
            text-decoration: none;
        }

    </style>

</head>

<body>

    <div class="navbar">

        <h2>🏏 Cricket Tournament Admin</h2>

        <div>
            <a href="admin.jsp">Dashboard</a>
            <a href="logout">Logout</a>
        </div>

    </div>


    <div class="container">

        <h1>➕ Add New Team</h1>

        <form action="addTeam" method="post">

            <label for="teamName">
                Team Name
            </label>

            <input
                type="text"
                id="teamName"
                name="teamName"
                placeholder="Enter team name"
                required
            >


            <label for="captain">
                Captain Name
            </label>

            <input
                type="text"
                id="captain"
                name="captain"
                placeholder="Enter captain name"
                required
            >


            <button type="submit">
                Add Team
            </button>

        </form>


        <a class="back" href="team.jsp">
            ← Back to Teams
        </a>

    </div>

</body>

</html>
