<%@ page import="cricket.DataStore" %>
<%@ page import="cricket.Team" %>
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

    <title>Add Player - Cricket Tournament</title>

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
            width: 480px;
            margin: 50px auto;
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

        input,
        select {
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

        <h1>➕ Add New Player</h1>

        <form action="addPlayer" method="post">

            <label for="name">
                Player Name
            </label>

            <input
                type="text"
                id="name"
                name="name"
                placeholder="Enter player name"
                required
            >


            <label for="team">
                Team
            </label>

            <select id="team" name="team" required>

                <option value="">
                    -- Select Team --
                </option>

                <%
                    for (Team team : DataStore.teams) {
                %>

                <option value="<%= team.getName() %>">
                    <%= team.getName() %>
                </option>

                <%
                    }
                %>

            </select>


            <label for="role">
                Role
            </label>

            <select id="role" name="role" required>

                <option value="">
                    -- Select Role --
                </option>

                <option value="Batsman">
                    Batsman
                </option>

                <option value="Bowler">
                    Bowler
                </option>

                <option value="All-Rounder">
                    All-Rounder
                </option>

            </select>


            <label for="runs">
                Runs
            </label>

            <input
                type="number"
                id="runs"
                name="runs"
                value="0"
                min="0"
                required
            >


            <label for="wickets">
                Wickets
            </label>

            <input
                type="number"
                id="wickets"
                name="wickets"
                value="0"
                min="0"
                required
            >


            <button type="submit">
                Add Player
            </button>

        </form>


        <a class="back" href="player.jsp">
            ← Back to Players
        </a>

    </div>

</body>

</html>
