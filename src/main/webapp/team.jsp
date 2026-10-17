
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

    <title>Manage Teams - Cricket Tournament</title>

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
            padding: 40px 60px;
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
            padding: 15px;
            text-align: left;
        }

        td {
            padding: 15px;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background: #f1f1f1;
        }

        .action {
            padding: 8px 14px;
            background: #c0392b;
            margin-right: 8px;
            color: white;
            text-decoration: none;
            border-radius: 4px;
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

        <h1>🏏 Manage Teams</h1>

        <p>
            View and manage tournament teams.
        </p>

        <a class="add-button" href="addTeam.jsp">
            + Add New Team
        </a>


        <table>

            <tr>
                <th>#</th>
                <th>Team Name</th>
                <th>Captain</th>
                <th>Players</th>
                <th>Action</th>
            </tr>


            <%
                int count = 1;

                for (Team team : DataStore.teams) {
            %>

            <tr>

                <td>
                    <%= count++ %>
                </td>

                <td>
                    <%= team.getName() %>
                </td>

                <td>
                    <%= team.getCaptain() %>
                </td>

                <td>
                    <%= team.getPlayers().size() %>
                </td>

                <td>
                    <a class="action" href="editTeam.jsp?name=<%= team.getName() %>"> Edit </a> 
                    <a class="action" href="deleteTeam?id=<%= team.getName() %>" onclick="return confirm('Are you sure you want to delete this team?');"> Delete </a>
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

