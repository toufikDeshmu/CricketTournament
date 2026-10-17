package cricket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editMatch")
public class EditMatchServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String indexParameter = request.getParameter("index");

        if (indexParameter != null) {

            try {

                int index = Integer.parseInt(indexParameter);

                String team1 = request.getParameter("team1");
                String team2 = request.getParameter("team2");

                int score1 = Integer.parseInt(request.getParameter("score1"));
                int score2 = Integer.parseInt(request.getParameter("score2"));

                if (index >= 0
                        && index < DataStore.matches.size()
                        && team1 != null
                        && team2 != null
                        && !team1.trim().isEmpty()
                        && !team2.trim().isEmpty()
                        && !team1.equals(team2)) {

                    Match updatedMatch = new Match(
                            team1.trim(),
                            team2.trim(),
                            score1,
                            score2
                    );

                    DataStore.matches.set(index, updatedMatch);
                    DataStore.saveMatches();
                }

            } catch (NumberFormatException e) {

                // Ignore invalid input

            }
        }

        response.sendRedirect("match.jsp");
    }
}
