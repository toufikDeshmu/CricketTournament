
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

    <title>Admin Dashboard - Cricket Tournament</title>

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

        .logout {
            background: #c0392b;
            color: white;
            padding: 10px 18px;
            text-decoration: none;
            border-radius: 5px;
        }

        .container {
            padding: 50px;
            text-align: center;
        }

        .container h1 {
            color: #12372A;
            margin-bottom: 10px;
        }

        .container p {
            color: #555;
            font-size: 17px;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
            margin-top: 40px;
        }

        .card {
            background: white;
            width: 220px;
            padding: 30px 20px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        .card h3 {
            color: #12372A;
            margin-bottom: 15px;
        }

        .card p {
            color: #666;
            font-size: 14px;
        }

        .card a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
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

        <h2>🏏 Cricket Tournament Admin</h2>

        <a class="logout" href="logout">
            Logout
        </a>

    </div>


    <div class="container">

        <h1>Welcome, <%= admin %> 👋</h1>

        <p>
            Manage your Cricket Tournament from the dashboard.
        </p>


        <div class="cards">

            <div class="card">

                <h3>🏏 Teams</h3>

                <p>
                    View and manage tournament teams.
                </p>

                <a href="team.jsp">
                    Manage Teams
                </a>

            </div>


            <div class="card">

                <h3>👤 Players</h3>

                <p>
                    View player information and statistics.
                </p>

                <a href="player.jsp">
                    Manage Players
                </a>

            </div>


            <div class="card">

                <h3>🏟️ Matches</h3>

                <p>
                   View and manage tournament matches.
                </p>

                <a href="match.jsp">
                    Manage Matches
                </a>

            </div>


            <div class="card">

                <h3>📊 Points Table</h3>

                <p>
                    View tournament standings.
                </p>

                <a href="points.jsp">
                    View Points
                </a>

            </div>

        </div>

    </div>

</body>

</html>

