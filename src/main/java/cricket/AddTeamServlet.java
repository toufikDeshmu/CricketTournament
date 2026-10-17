
package cricket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addTeam")
public class AddTeamServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String teamName = request.getParameter("teamName");
        String captain = request.getParameter("captain");

        if (teamName != null && captain != null
                && !teamName.trim().isEmpty()
                && !captain.trim().isEmpty()) {

            Team newTeam = new Team(
                    teamName.trim(),
                    captain.trim()
            );

            DataStore.teams.add(newTeam);
            DataStore.saveTeams();
        }

        response.sendRedirect("team.jsp");
    }
}

