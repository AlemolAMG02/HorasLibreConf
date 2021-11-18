/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alemol
 */
@WebServlet(name = "administracion", urlPatterns = { "/administracion" })
public class administracion extends HttpServlet {

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
            Enumeration<String> parametros = request.getParameterNames();
            String btnCS = parametros.nextElement();
            // String btnCS = (String) request.getParameter("cerrarSesion");

            if (btnCS.equals("cerrarSesion")) {
                cerrarSesion(out, miSesion, response, btnCS);
                response.sendRedirect("index.jsp"); // Volvemos al index
            } else {
                out.println("Manejo de usuarios.jsp");
                out.println(
                        "<form action='formulario.jsp' method='post'><input type='submit' name='volver' value='Volver index'></form>");
            }

        }
    }

    protected void cerrarSesion(PrintWriter out, HttpSession sesion, HttpServletResponse response, String btn) {
        out.println(btn);
        sesion.removeAttribute("logueado"); // Borramos atributo logueado
        sesion.invalidate(); // Invalida la sesión completa
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
