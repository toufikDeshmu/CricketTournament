package cricket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editPlayer")
public class EditPlayerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String oldName = request.getParameter("oldName");
        String oldTeam = request.getParameter("oldTeam");

        String newName = request.getParameter("name");
        String newTeam = request.getParameter("team");
        String role = request.getParameter("role");

        int runs = Integer.parseInt(request.getParameter("runs"));
        int wickets = Integer.parseInt(request.getParameter("wickets"));

        Player selectedPlayer = null;
        Team oldTeamObject = null;

        // Find the existing player
        for (Team team : DataStore.teams) {

            if (team.getName().equals(oldTeam)) {

                oldTeamObject = team;

                for (Player player : team.getPlayers()) {

                    if (player.getName().equals(oldName)) {

                        selectedPlayer = player;
                        break;
                    }
                }

                break;
            }
        }

        if (selectedPlayer != null && oldTeamObject != null) {

            Player updatedPlayer = new Player(
                    newName.trim(),
                    role,
                    runs,
                    wickets
            );

            // If player stays in the same team
            if (oldTeam.equals(newTeam)) {

                int index = oldTeamObject.getPlayers().indexOf(selectedPlayer);

                oldTeamObject.getPlayers().set(index, updatedPlayer);

            } else {

                // Remove player from old team
                oldTeamObject.getPlayers().remove(selectedPlayer);

                // Add player to new team
                for (Team team : DataStore.teams) {

                    if (team.getName().equals(newTeam)) {

                        team.addPlayer(updatedPlayer);
                        break;
                    }
                }
            }

            DataStore.saveTeams();
        }

        response.sendRedirect("player.jsp");
    }
}
