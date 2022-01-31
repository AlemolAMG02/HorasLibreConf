<%-- 
    Document   : index.jsp
    Created on : 25 ene 2022, 8:53:46
    Author     : alemol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.PersonaDAO" %>
<%@page import="Entidad.Persona" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Ejemplo</title>
        <!-- Latest compiled and minified CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>

        <div id="principal" class="row bg-danger py-2">
            <h1>Ejercicio de prueba</h1>
            <div class="col" id="columnaLista">
                <table class="table">
                    <th>
                    <tr>ID</tr>
                    <tr>Nombre</tr>
                    <tr>Apellido</tr>
                    </th>
                    <% 
                        PersonaDAO control = new PersonaDAO();
                        
                        List<Persona> lista= control.listarPersonas();
                        out.println("<h2>Listas personas</h2>");
                        
                        for(Persona p :lista){
                            out.println("<tr>");
                            //out.println("nombre: "+p.getNombre() + " ,Apellidos: " + p.getApellido() +"<br>");
                            out.println("<td> </td><td>nombre: "+p.getNombre() + " </td><td>Apellidos: " + p.getApellido() +"</td>");
                            out.println("</tr>");
                        }
                    %>
                    <td></td>
                </table>    

            </div>


        </div>

        <!-- No funciona muy bien -->
        <%            
            
        %>

    </body>
</html>
