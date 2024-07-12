package org.example.projet.exercice5;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name = "servletChien", value = "/chien/*")
public class ServletChien extends HttpServlet {

    private ChienRepository chienRepository;


    @Override
    public void init() throws ServletException {
         this.chienRepository = new ChienRepository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String pathInfo = req.getPathInfo();
        switch (pathInfo) {
            case "/chiens":
                listChiens(req, resp);
                break;
            case "/add":
                addChien(req, resp);
                break;
            case "/infos":
                infos(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String race = req.getParameter("race");
        LocalDate date = LocalDate.parse(req.getParameter("date"));

        chienRepository.create(Chien.builder().nom(nom).race(race).dateNaissance(date).build());

        doGet(req,resp);
    }

    protected void listChiens (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Chien> chiens = chienRepository.getAll();

        req.setAttribute("chiens", chiens);
        req.getRequestDispatcher("/exercice5/chiens.jsp").forward(req, resp);
    }

    protected void addChien (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/exercice5/addChien.jsp").forward(req, resp);
    }

    protected void infos (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        long id = Long.parseLong(req.getParameter("id"));
        req.setAttribute("chien", chienRepository.findById(id));
        req.getRequestDispatcher("/exercice5/infos.jsp").forward(req, resp);

    }

}
