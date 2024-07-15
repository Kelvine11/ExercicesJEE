package org.example.projet.exercice5.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.projet.exercice5.entity.Chien;
import org.example.projet.exercice5.repository.ChienRepository;

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
            case "/delete":
                delete(req, resp);
                break;
            case "/update":
                updatePage(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        switch (req.getParameter("type")) {
            case "create":
                create(req, resp);
                break;
            case "update":
                update(req, resp);
                break;
        }
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

    protected void create(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String race = req.getParameter("race");
        LocalDate date = LocalDate.parse(req.getParameter("date"));

        chienRepository.create(Chien.builder().nom(nom).race(race).dateNaissance(date).build());

        doGet(req,resp);
    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));
        Chien chien = chienRepository.findById(id);
        chienRepository.delete(chien);
        listChiens(req, resp);
    }

    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));
        Chien chien = chienRepository.findById(id);
        chien.setNom(req.getParameter("nom"));
        chien.setRace(req.getParameter("race"));
        chien.setDateNaissance(LocalDate.parse(req.getParameter("date")));

        chienRepository.update(chien);

        doGet(req,resp);
    }

    protected void updatePage (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));
        req.setAttribute("chien", chienRepository.findById(id));
        req.getRequestDispatcher("/exercice5/updateChien.jsp").forward(req, resp);

    }

}
