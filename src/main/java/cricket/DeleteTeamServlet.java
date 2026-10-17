package cricket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteTeam")
public class DeleteTeamServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String teamName = request.getParameter("id");

        if (teamName != null) {

            for (int i = 0; i < DataStore.teams.size(); i++) {

                Team team = DataStore.teams.get(i);

                if (team.getName().equals(teamName)) {
                    DataStore.teams.remove(i);
                    DataStore.saveTeams();
                    break;
                }
            }
        }

        response.sendRedirect("team.jsp");
    }
}
