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
    </head>
    <body>
        <h1>Ejercicio de prueba</h1>
        Hola mundo
        
        <!-- No funciona muy bien -->
        <%
            out.println("<br>Entro en el jsp");
            List<Persona> lista = new PersonaDAO().listarPersonas();
            
        %>
        
    </body>
</html>
