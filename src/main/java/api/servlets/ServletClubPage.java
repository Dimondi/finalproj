package api.servlets;

import api.models.Club;
import api.services.ClubService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ClubServlet")
public class ServletClubPage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        String id = request.getParameter("id");
        if(type.equals("club")) {
            ClubService clubService = new ClubService();
            Club club = clubService.getClub(id);
            request.setAttribute("club", club);
            request.getRequestDispatcher("jsp/ClubPage.jsp").forward(request, response);
        }
        if(type.equals("event")){
            request.getRequestDispatcher("jsp/EventPage.jsp").forward(request, response);
        }
        if(type.equals("news")){
            request.getRequestDispatcher("jsp/NewsPage.jsp").forward(request, response);
        }
    }
}