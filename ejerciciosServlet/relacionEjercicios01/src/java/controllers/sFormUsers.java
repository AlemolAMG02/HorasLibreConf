/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;

/**
 *
 * @author alemol
 */
@WebServlet(name = "sFormUsers", urlPatterns = {"/sFormUsers"})
public class sFormUsers extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            String nombre = request.getParameter("user");
            String contra = request.getParameter("pass");
            
            ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
            usuarios.add(new Usuario());
            usuarios.add(new Usuario("Fran","1234"));
            usuarios.add(new Usuario("Sabrina","1234"));
            
            boolean nomCorr = false, passCorr = false;
            
            for (Usuario user : usuarios) {
                if(nombre.equals(user.getNombre())){
                    nomCorr = true;
                    if(contra.equals(user.getPass()))
                        passCorr = true;        
                }
            }
            
            if(nomCorr && passCorr){
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>ComprobarPass</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>El usuario " + nombre + " y su contraseña es correcta </h1>");
                out.println("</body>");
                out.println("</html>");
                
            } else {
            
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>ComprobarPass</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Inicia sesión: </h1>");
                out.println("<form action=\"sFormUsers\" method=\"post\">\n" +
"            Usuario: <input type=\"text\" name=\"user\" placeholder=\"Usuario\">\n<br>" +
"            Contraseña: <input type=\"password\" name=\"pass\" placeholder=\"Contraseña\">\n<br>" +
"            <input type=\"submit\" name=\"enviar\" value=\"Comprobar\"/>\n" +
"        </form>");
                if(nomCorr){
                    out.println("<p>Contraseña para " + nombre + " es incorrecta");
                } else {
                    out.println("<p>El usuario " + nombre + " no existe");
                }
                out.println("</body>");
                out.println("</html>");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
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
