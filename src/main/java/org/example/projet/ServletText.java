package org.example.projet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "servletText",value = "/servlet_text")
public class ServletText extends HttpServlet {

    @Override
    public void init(){
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws IOException {
         resp.setContentType("text/plain");
        PrintWriter writer = resp.getWriter();
        writer.println("Servlet texte brut");
    }

    @Override
    public void destroy() {

    }
}
