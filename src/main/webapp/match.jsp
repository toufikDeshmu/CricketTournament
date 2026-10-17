<%@ page import="cricket.DataStore" %>
<%@ page import="cricket.Match" %>
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
<title>Manage Matches - Cricket Tournament</title>

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
    padding: 40px 50px;
}

h1 {
    color: #12372A;
}

.add-button {
    display: inline-block;
    margin: 15px 0 25px;
    padding: 12px 22px;
    background: #12372A;
    color: white;
    text-decoration: none;
    border-radius: 5px;
}

.add-button:hover {
    background: #1d5943;
}

table {
    width: 100%;
    border-collapse: collapse;
    background: white;
    box-shadow: 0 3px 10px rgba(0,0,0,0.1);
}

th {
    background: #12372A;
    color: white;
    padding: 14px;
    text-align: left;
}

td {
    padding: 14px;
    border-bottom: 1px solid #ddd;
}

tr:hover {
    background: #f1f1f1;
}

.delete {
    padding: 8px 14px;
    background: #c0392b;
    color: white;
    text-decoration: none;
    border-radius: 4px;
}

.edit {
    padding: 8px 14px;
    background: #2980b9;
    color: white;
    text-decoration: none;
    border-radius: 4px;
    margin-right: 8px;
}

.back {
    display: inline-block;
    margin-top: 25px;
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

    <h1>🏏 Manage Matches</h1>

    <p>View and manage tournament matches.</p>

    <a class="add-button" href="addMatch.jsp">
        + Add New Match
    </a>

    <table>

        <tr>
            <th>#</th>
            <th>Team 1</th>
            <th>Score 1</th>
            <th>Team 2</th>
            <th>Score 2</th>
            <th>Winner</th>
            <th>Action</th>
        </tr>

        <%
    int count = 1;

    for (int i = 0; i < DataStore.matches.size(); i++) {

        Match match = DataStore.matches.get(i);
%>

        <tr>

            <td><%= count++ %></td>

            <td><%= match.getTeam1() %></td>

            <td><%= match.getScore1() %></td>

            <td><%= match.getTeam2() %></td>

            <td><%= match.getScore2() %></td>

            <td><%= match.getWinner() %></td>

            <td>

                <a class="edit"
   href="editMatch.jsp?index=<%= i %>">
    Edit
</a>

                <a class="delete"
   href="deleteMatch?index=<%= i %>"
   onclick="return confirm('Are you sure you want to delete this match?');">
    Delete
</a>

            </td>

        </tr>

        <%
            }
        %>

    </table>

    <a class="back" href="admin.jsp">
        ← Back to Dashboard
    </a>

</div>

</body>
</html>
