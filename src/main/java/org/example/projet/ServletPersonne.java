package org.example.projet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "servletPersonne", value = "/personnes")
public class ServletPersonne extends HttpServlet {

    private List<Personne> personnes;

    @Override
    public void init() throws ServletException {
        personnes = new ArrayList<>();
        personnes.add(new Personne("toto", "to", 25));
        personnes.add(new Personne("tata", "ta", 35));
        personnes.add(new Personne("tutu", "tu", 45));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("personnes", personnes);
        req.getRequestDispatcher("/personnes.jsp").forward(req, resp);
    }

}
