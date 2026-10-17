
<%@ page import="cricket.DataStore" %>
<%@ page import="cricket.Team" %>
<%@ page import="cricket.Match" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Points Table - Cricket Tournament</title>

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
            max-width: 1000px;
            margin: auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 35px;
        }

        .table-container {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 14px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background: #12372A;
            color: white;
        }

        tr:hover {
            background: #f5f5f5;
        }

        .points {
            font-weight: bold;
            color: #12372A;
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

        <h1>📊 Points Table</h1>


        <%

            Map<String, Integer> played = new HashMap<>();
            Map<String, Integer> won = new HashMap<>();
            Map<String, Integer> draw = new HashMap<>();
            Map<String, Integer> lost = new HashMap<>();
            Map<String, Integer> points = new HashMap<>();


            for (Team team : DataStore.teams) {

                played.put(team.getName(), 0);
                won.put(team.getName(), 0);
                draw.put(team.getName(), 0);
                lost.put(team.getName(), 0);
                points.put(team.getName(), 0);

            }


            for (Match match : DataStore.matches) {

                String team1 = match.getTeam1();
                String team2 = match.getTeam2();

                played.put(team1, played.get(team1) + 1);
                played.put(team2, played.get(team2) + 1);


                if (match.getWinner().equals("Match Draw")) {

                    draw.put(team1, draw.get(team1) + 1);
                    draw.put(team2, draw.get(team2) + 1);

                    points.put(team1, points.get(team1) + 1);
                    points.put(team2, points.get(team2) + 1);

                }

                else {

                    String winner = match.getWinner();

                    String loser;

                    if (winner.equals(team1)) {
                        loser = team2;
                    } else {
                        loser = team1;
                    }


                    won.put(winner, won.get(winner) + 1);
                    lost.put(loser, lost.get(loser) + 1);

                    points.put(winner, points.get(winner) + 2);

                }

            }

        %>


        <div class="table-container">

            <table>

                <tr>

                    <th>Team</th>
                    <th>Played</th>
                    <th>Won</th>
                    <th>Draw</th>
                    <th>Lost</th>
                    <th>Points</th>

                </tr>


                <%

                    for (Team team : DataStore.teams) {

                        String teamName = team.getName();

                %>

                <tr>

                    <td>
                        <strong>
                            <%= teamName %>
                        </strong>
                    </td>

                    <td>
                        <%= played.get(teamName) %>
                    </td>

                    <td>
                        <%= won.get(teamName) %>
                    </td>

                    <td>
                        <%= draw.get(teamName) %>
                    </td>

                    <td>
                        <%= lost.get(teamName) %>
                    </td>

                    <td class="points">
                        <%= points.get(teamName) %>
                    </td>

                </tr>

                <%

                    }

                %>

            </table>

        </div>


        <a class="back" href="index.jsp">
            ← Back to Home
        </a>

    </div>

</body>

</html>

