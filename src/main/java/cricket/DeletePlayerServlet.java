package cricket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deletePlayer")
public class DeletePlayerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String playerName = request.getParameter("name");
        String teamName = request.getParameter("team");

        if (playerName != null && teamName != null) {

            playerName = playerName.trim();
            teamName = teamName.trim();

            for (Team team : DataStore.teams) {

                if (team.getName().trim().equals(teamName)) {

                    for (int i = 0; i < team.getPlayers().size(); i++) {

                        Player player = team.getPlayers().get(i);

                        if (player.getName().trim().equals(playerName)) {

                            team.getPlayers().remove(i);

                            System.out.println(
                                "Player deleted: " + playerName
                            );

                            DataStore.saveTeams();

                            break;
                        }
                    }

                    break;
                }
            }
        }

        response.sendRedirect("player.jsp");
    }
}