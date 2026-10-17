package cricket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addMatch")
public class AddMatchServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String team1 = request.getParameter("team1");
        String team2 = request.getParameter("team2");

        int score1 = Integer.parseInt(request.getParameter("score1"));
        int score2 = Integer.parseInt(request.getParameter("score2"));

        if (team1 != null && team2 != null
                && !team1.trim().isEmpty()
                && !team2.trim().isEmpty()
                && !team1.equals(team2)) {

            Match newMatch = new Match(
                    team1,
                    team2,
                    score1,
                    score2
            );

            DataStore.matches.add(newMatch);
            DataStore.saveMatches();
        }

        response.sendRedirect("match.jsp");
    }
}
