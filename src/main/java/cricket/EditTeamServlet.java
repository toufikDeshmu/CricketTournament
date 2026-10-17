package cricket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editTeam")
public class EditTeamServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String oldName = request.getParameter("oldName");
        String newName = request.getParameter("teamName");
        String captain = request.getParameter("captain");

        if (oldName != null && newName != null && captain != null
                && !newName.trim().isEmpty()
                && !captain.trim().isEmpty()) {

            for (Team team : DataStore.teams) {

                if (team.getName().equals(oldName)) {

                    /*
                     * Team has no setter methods,
                     * so create a new Team with the updated information.
                     */
                    Team updatedTeam = new Team(
                            newName.trim(),
                            captain.trim()
                    );

                    /*
                     * Keep all existing players.
                     */
                    for (Player player : team.getPlayers()) {
                        updatedTeam.addPlayer(player);
                    }

                    int index = DataStore.teams.indexOf(team);

                    DataStore.teams.set(index, updatedTeam);
                    DataStore.saveTeams();

                    break;
                }
            }
        }

        response.sendRedirect("team.jsp");
    }
}
