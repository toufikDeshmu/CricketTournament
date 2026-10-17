package cricket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteMatch")
public class DeleteMatchServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String indexParameter = request.getParameter("index");

        if (indexParameter != null) {

            try {

                int index = Integer.parseInt(indexParameter);

                if (index >= 0 && index < DataStore.matches.size()) {

                    DataStore.matches.remove(index);
                    DataStore.saveMatches();
                }

            } catch (NumberFormatException e) {

                // Ignore invalid index

            }
        }

        response.sendRedirect("match.jsp");
    }
}
