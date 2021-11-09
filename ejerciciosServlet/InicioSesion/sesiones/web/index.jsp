<%-- 
    Document   : index
    Created on : 2 nov 2021, 8:46:06
    Author     : alemol
--%>

<%@page import="modelo.Usuario"%>
<%@page import="modelo.ListaUsuarios"%>
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
            Boolean logueado =(Boolean)session.getAttribute("logueado");  //La primera vez dará null, las siguientes si existirá
            String formu = "formulario.jsp";
            
            if(session.isNew() || logueado == null){
                response.sendRedirect(formu);
            } else {
                if(logueado){
                    //ListaUsuarios listUsu = (ListaUsuarios) session.getAttribute("usuarios");   
                    //Usuario userIni = (Usuario) session.getAttribute("userIni");
                    Boolean esAdmin = (Boolean) session.getAttribute("esAdmin");
                    if(esAdmin == true){
                        out.println("Eres Admin");
                    %>
                    
                    <form action="administracion" method="post">
                        <p>Eres el administrador, elige una opción:</p>
                        <input type="submit" name="addUser" value="Añadir Usuario">
                        <input type="submit" name="cerrarSesion" value="Cerrar Sesión">
                    </form>
                    
                <%    
                    }else{
                        out.println("Estás logueado como usuario normal");
                        %>
                        <form action="administracion" method="post">
                            <p>No eres administrador</p>
                            <input type="submit" name="cerrarSesion" value="Cerrar Sesión">
                        </form>
                        <%
                        //response.sendRedirect(formu);
                    }
                }  else {
                    response.sendRedirect(formu);
                } 
            }
            
            session.setMaxInactiveInterval(2500);
            %>
        
    </body>
</html>
