package org.example.projet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "servletChat", value = "/chats")
public class ServletChat extends HttpServlet {

    private List<Chat> chats;

    @Override
    public void init() throws ServletException {
        chats = new ArrayList<>();
        chats.add(new Chat("toto", "to", "Viande",  LocalDate.of(2020, 1, 8)));
        chats.add(new Chat("tata", "ta", "Poisson",  LocalDate.of(2021, 8, 12)));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("chats", chats);
        req.getRequestDispatcher("/chats.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom =  req.getParameter("nom");
        String race =  req.getParameter("race");
        String repas =  req.getParameter("repas");

        chats.add(new Chat(nom, race, repas, LocalDate.parse(req.getParameter("date"))));
    }

}