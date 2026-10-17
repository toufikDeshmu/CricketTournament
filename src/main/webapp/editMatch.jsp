<%@ page import="cricket.DataStore" %>
<%@ page import="cricket.Match" %>
<%@ page import="cricket.Team" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String admin = (String) session.getAttribute("admin");

    if (admin == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String indexParameter = request.getParameter("index");

    Match selectedMatch = null;
    int matchIndex = -1;

    if (indexParameter != null) {

        try {
            matchIndex = Integer.parseInt(indexParameter);

            if (matchIndex >= 0 && matchIndex < DataStore.matches.size()) {
                selectedMatch = DataStore.matches.get(matchIndex);
            }

        } catch (NumberFormatException e) {
            matchIndex = -1;
        }
    }

    if (selectedMatch == null) {
        response.sendRedirect("match.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Edit Match - Cricket Tournament</title>

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
    width: 500px;
    margin: 50px auto;
    background: white;
    padding: 35px;
    border-radius: 8px;
    box-shadow: 0 3px 10px rgba(0,0,0,0.1);
}

h1 {
    color: #12372A;
    margin-bottom: 25px;
}

label {
    display: block;
    margin-top: 15px;
    margin-bottom: 6px;
    font-weight: bold;
}

select,
input {
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    width: 100%;
    margin-top: 25px;
    padding: 12px;
    background: #12372A;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    background: #1d5943;
}

.back {
    display: inline-block;
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

    <h1>✏️ Edit Match</h1>

    <form action="editMatch" method="post">

        <!-- Match index used to identify the exact match -->
        <input type="hidden"
               name="index"
               value="<%= matchIndex %>">

        <label>Team 1</label>

        <select name="team1" required>

            <%
                for (Team team : DataStore.teams) {
            %>

                <option value="<%= team.getName() %>"
                    <%= team.getName().equals(selectedMatch.getTeam1()) ? "selected" : "" %>>

                    <%= team.getName() %>

                </option>

            <%
                }
            %>

        </select>


        <label>Score 1</label>

        <input
            type="number"
            name="score1"
            value="<%= selectedMatch.getScore1() %>"
            min="0"
            required
        >


        <label>Team 2</label>

        <select name="team2" required>

            <%
                for (Team team : DataStore.teams) {
            %>

                <option value="<%= team.getName() %>"
                    <%= team.getName().equals(selectedMatch.getTeam2()) ? "selected" : "" %>>

                    <%= team.getName() %>

                </option>

            <%
                }
            %>

        </select>


        <label>Score 2</label>

        <input
            type="number"
            name="score2"
            value="<%= selectedMatch.getScore2() %>"
            min="0"
            required
        >


        <button type="submit">
            Update Match
        </button>

    </form>

    <a class="back" href="match.jsp">
        ← Back to Matches
    </a>

</div>

</body>

</html>

