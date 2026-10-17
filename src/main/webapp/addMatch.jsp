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

<title>Add Match - Cricket Tournament</title>

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

select,
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

    <h1>➕ Add New Match</h1>

    <form action="addMatch" method="post">

        <label for="team1">Team 1</label>

        <select id="team1" name="team1" required>

            <option value="">-- Select Team 1 --</option>

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


        <label for="score1">Team 1 Score</label>

        <input
            type="number"
            id="score1"
            name="score1"
            min="0"
            value="0"
            required
        >


        <label for="team2">Team 2</label>

        <select id="team2" name="team2" required>

            <option value="">-- Select Team 2 --</option>

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


        <label for="score2">Team 2 Score</label>

        <input
            type="number"
            id="score2"
            name="score2"
            min="0"
            value="0"
            required
        >


        <button type="submit">
            Add Match
        </button>

    </form>

    <a class="back" href="match.jsp">
        ← Back to Matches
    </a>

</div>

</body>
</html>
