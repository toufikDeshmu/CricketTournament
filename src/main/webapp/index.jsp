
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Cricket Tournament Management</title>

    

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
            margin-left: 25px;
        }

        .hero {
            text-align: center;
            padding: 80px 20px;
            background: white;
        }

        .hero h1 {
            font-size: 42px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 18px;
            color: #555;
        }

        .button {
            display: inline-block;
            margin-top: 25px;
            padding: 13px 28px;
            background: #12372A;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 25px;
            padding: 40px;
            flex-wrap: wrap;
        }

        .card {
            background: white;
            width: 220px;
            padding: 25px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        .card h3 {
            margin-bottom: 10px;
        }

        .card a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 18px;
            background: #12372A;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .card a:hover {
            background: #1d5943;
        }

    </style>
    

</head>

<body>

    <div class="navbar">

        <h2>🏏 Cricket Tournament</h2>

        <div>

            <a href="index.jsp">Home</a>

            <a href="login.jsp">Admin Login</a>

        </div>

    </div>


    <div class="hero">

        <h1>Cricket Tournament Management System</h1>

        <p>
            Manage teams, players, matches and tournament statistics
            in one place.
        </p>

        <a class="button" href="login.jsp">
            Admin Login
        </a>

    </div>


    <div class="cards">

        <div class="card">

            <h3>🏏 Teams</h3>

            <p>
                Manage cricket teams and their players.
            </p>

            <a href="teams.jsp">
                View Teams
            </a>

        </div>


        <div class="card">

            <h3>👤 Players</h3>

            <p>
                View player performance and statistics.
            </p>

            <a href="players.jsp">
                View Players
            </a>

        </div>


        <div class="card">

            <h3>🏟️ Matches</h3>

            <p>
                Manage match scores and results.
            </p>

            <a href="matches.jsp">
                View Matches
            </a>

        </div>


        <div class="card">

            <h3>📊 Points Table</h3>

            <p>
                View tournament standings.
            </p>

            <a href="points.jsp">
                View Points Table
            </a>

        </div>

    </div>

</body>

</html>
