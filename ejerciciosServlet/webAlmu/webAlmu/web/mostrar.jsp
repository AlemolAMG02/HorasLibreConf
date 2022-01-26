<%-- 
    Document   : mostrar
    Created on : 12-dic-2021, 12:46:27
    Author     : ASUS
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
    </head>
    <body>
        <h1>TODOS LOS PRODUCTOS</h1>

        <%

            Connection miconexion = Conect.Conexion.getConexion();// esto es asi pq es estatico
            Statement mistat = miconexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = mistat.executeQuery("select * from zapatos");
            //RECORRE LOS VALORES DE LA TABLA
            while (rs.next()) {
                out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getInt(4));
                out.println("<BR>");
            }
            rs.close();
            miconexion.close();
        %>
        <hr>
        <a href="index.jsp">Volver</a>
    </body>
</html>
