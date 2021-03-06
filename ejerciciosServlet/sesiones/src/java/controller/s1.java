/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import modelo.ListaUsuarios;
import modelo.Usuario;

/**
 *
 * @author alemol
 */
@WebServlet(name = "s1", urlPatterns = { "/s1" })
public class s1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession miSesion = request.getSession(); // Recuperamos la sesión
            String nombre = request.getParameter("nombre");
            String pass = request.getParameter("pass");

            ListaUsuarios usuarios = (ListaUsuarios) request.getAttribute("usuarios");
            if (usuarios != null) { // Lista usuarios ya existe

                for (Usuario user : usuarios) {
                    if (nombre.equals(user.getNombre()) && pass.equals(user.getPasswd())) {
                        miSesion.setAttribute("logueado", "true");
                        miSesion.setAttribute("userIni", user);
                        miSesion.setAttribute("esAdmin", user.isAdministrador());
                        break;
                    } else {
                        miSesion.setAttribute("logueado", "false");
                        miSesion.setAttribute("userIni", user);
                        miSesion.setAttribute("esAdmin", user.isAdministrador());
                    }
                }
                // response.sendRedirect("index.jsp");
            } else {
                usuarios = new ListaUsuarios(); // Se crea la lista de usuarios
                usuarios.add(new Usuario("Alemol", "1234", false));
                for (Usuario user : usuarios) {
                    if (nombre.equals(user.getNombre()) && pass.equals(user.getPasswd())) {
                        miSesion.setAttribute("logueado", "true");
                        miSesion.setAttribute("userIni", user);
                        miSesion.setAttribute("esAdmin", user.isAdministrador());
                        break;
                    } else {
                        miSesion.setAttribute("logueado", "false");
                        miSesion.setAttribute("userIni", user);
                        miSesion.setAttribute("esAdmin", user.isAdministrador());
                    }
                }
                miSesion.setAttribute("usuarios", usuarios);
            }
            response.sendRedirect("index.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
