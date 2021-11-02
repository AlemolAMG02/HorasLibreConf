<%-- 
    Document   : index
    Created on : 2 nov 2021, 8:46:06
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
        <h1>Hello World!</h1>
        <%
            String logueado =(String)session.getAttribute("logueado");  //La primera vez dará null, las siguientes si existirá
            String formu = "formulario.jsp";
            
            if(session.isNew() || logueado == null){
                response.sendRedirect(formu);
            } else 
                if(logueado.equals("admin")){
                    out.println("Eres Admin");
                    %>
                    
                    <form action="administracion" method="post">
                        <p>Eres el administrador, elige una opción:</p>
                        <input type="submit" name="cerrarSesion" value="Cerrar Sesión">
                    </form>
                    
                <%    
                }else{
                    out.println("No estás logueado");
                    response.sendRedirect(formu);
                }
            session.setMaxInactiveInterval(200);
            %>
        
    </body>
</html>
