package cricket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addPlayer")
public class AddPlayerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String teamName = request.getParameter("team");
        String role = request.getParameter("role");

        int runs = Integer.parseInt(request.getParameter("runs"));
        int wickets = Integer.parseInt(request.getParameter("wickets"));

        Player newPlayer = new Player(
                name,
                role,
                runs,
                wickets
        );

        for (Team team : DataStore.teams) {

            if (team.getName().equals(teamName)) {

                team.addPlayer(newPlayer);
                DataStore.saveTeams();

                break;
            }
        }

        response.sendRedirect("player.jsp");
    }
}
