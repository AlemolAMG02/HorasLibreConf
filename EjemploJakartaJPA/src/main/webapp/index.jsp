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

        <div id="principal" class="row m-1 py-2">
            <h1>Ejercicio de prueba</h1>
            <div class="col bg-success" id="columnaLista">
                <table class="table table-hover me-1">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                    </tr>
                    <% 
                        PersonaDAO control = new PersonaDAO();
                        
                        List<Persona> lista= control.listarPersonas();
                        out.println("<h2>Listas personas</h2>");
                        
                        for(Persona p :lista){
                            out.println("<tr>");
                            //out.println("nombre: "+p.getNombre() + " ,Apellidos: " + p.getApellido() +"<br>");
                            out.println("<td>"+ p.getIdPersona() + "</td><td>"+p.getNombre() + " </td><td>" + p.getApellido() +"</td>");
                            out.println("</tr>");
                        }
                    %>
                </table>    

            </div>

            <div class="col bg-warning" id="columnaForm">
                <h2>Añadir Alumno</h2>
                <div id="divForm">
                    <form class="form-control">
                        <div class="mb-1 mt-1">
                            <label for="nombre" class="form-label">Nombre:</label>
                            <input type="email" class="form-control" id="nombre" placeholder="Nombre del Alumno" name="nombre">
                        </div>
                        <div class="mb-1">
                            <label for="pwd" class="form-label">Password:</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>


        </div>

    </body>
</html>
