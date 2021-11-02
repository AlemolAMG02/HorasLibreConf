<%-- 
    Document   : formulario
    Created on : 2 nov 2021, 8:47:23
    Author     : alemol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario</h1>
        
        <form action="s1" method="post">
            nombre: <input type="text" name="nombre"><br>
            contraseña: <input type="password" name="pass"><br><!-- comment -->
            <input type="submit" value="Enviar">
        </form>
        
        <br><br>
        
        <%
            //if(!session.isNew()){
                String logueado = (String)session.getAttribute("logueado");
                if(logueado!=null && !logueado.equals("admin")){
                    out.println("Usuario incorrecto, " + logueado);
                }
            //}
        %>
        
    </body>
</html>
