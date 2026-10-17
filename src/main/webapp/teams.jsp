
<%@ page import="cricket.DataStore" %>
<%@ page import="cricket.Team" %>
<%@ page import="cricket.Player" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Teams - Cricket Tournament</title>

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

        .container {
            padding: 40px;
            max-width: 1100px;
            margin: auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 35px;
        }

        .team-card {
            background: white;
            padding: 25px;
            margin-bottom: 25px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        .team-card h2 {
            color: #12372A;
            margin-top: 0;
        }

        .captain {
            color: #555;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background: #12372A;
            color: white;
        }

        .back {
            display: inline-block;
            margin-top: 25px;
            padding: 10px 20px;
            background: #12372A;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

    </style>

</head>

<body>

    <div class="navbar">

        <h2>🏏 Cricket Tournament</h2>

        <div>
            <a href="index.jsp">Home</a>
            <a href="teams.jsp">Teams</a>
            <a href="players.jsp">Players</a>
            <a href="matches.jsp">Matches</a>
            <a href="points.jsp">Points Table</a>
        </div>

    </div>


    <div class="container">

        <h1>🏏 Cricket Teams</h1>


        <%
            for (Team team : DataStore.teams) {
        %>

            <div class="team-card">

                <h2><%= team.getName() %></h2>

                <p class="captain">
                    <strong>Captain:</strong>
                    <%= team.getCaptain() %>
                </p>


                <h3>Players</h3>

                <table>

                    <tr>
                        <th>Player Name</th>
                        <th>Role</th>
                        <th>Runs</th>
                        <th>Wickets</th>
                    </tr>


                    <%
                        for (Player player : team.getPlayers()) {
                    %>

                        <tr>

                            <td>
                                <%= player.getName() %>
                            </td>

                            <td>
                                <%= player.getRole() %>
                            </td>

                            <td>
                                <%= player.getRuns() %>
                            </td>

                            <td>
                                <%= player.getWickets() %>
                            </td>

                        </tr>

                    <%
                        }
                    %>

                </table>

            </div>

        <%
            }
        %>


        <a class="back" href="index.jsp">
            ← Back to Home
        </a>

    </div>

</body>

</html>

