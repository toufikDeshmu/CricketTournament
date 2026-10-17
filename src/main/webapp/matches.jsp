<%@ page import="cricket.DataStore" %>
<%@ page import="cricket.Match" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Matches - Cricket Tournament</title>

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

        .match-card {
            background: white;
            padding: 30px;
            margin-bottom: 25px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
            text-align: center;
        }

        .teams {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 50px;
            font-size: 22px;
            font-weight: bold;
        }

        .score {
            font-size: 28px;
            margin-top: 20px;
        }

        .winner {
            margin-top: 15px;
            font-size: 18px;
            color: #12372A;
            font-weight: bold;
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

        <h1>🏟️ Match Results</h1>


        <%

            for (Match match : DataStore.matches) {

        %>


            <div class="match-card">

                <div class="teams">

                    <span>
                        <%= match.getTeam1() %>
                    </span>

                    <span>VS</span>

                    <span>
                        <%= match.getTeam2() %>
                    </span>

                </div>


                <div class="score">

                    <%= match.getScore1() %>
                    -
                    <%= match.getScore2() %>

                </div>


                <div class="winner">

                    🏆 Winner:
                    <%= match.getWinner() %>

                </div>

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
