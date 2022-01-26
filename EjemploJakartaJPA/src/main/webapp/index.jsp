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
        
        <!-- No funciona muy bien -->
        <%
            PersonaDAO control = new PersonaDAO();
            //out.println("<br>He creado dos objetos");
            
            //Persona person = new Persona(20,"Ruben","Apell");
            //control.insertar(person);
            
            List<Persona> lista= control.listarPersonas();
            out.println("<h2>Listas personas</h2>");
            for(Persona p :lista){
                
                out.println("nombre: "+p.getNombre() + " ,Apellidos: " + p.getApellido() +"<br>");
                           }
               
            
            
         %>
        
    </body>
</html>
