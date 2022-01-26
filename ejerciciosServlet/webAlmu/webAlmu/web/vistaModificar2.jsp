<%-- 
    Document   : vistaInsertar
    Created on : 12-dic-2021, 11:49:19
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
        <title>Insertar</title>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"

              integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
              crossorigin="anonymous">
    </head>
    <body>
        <h2 class="text-center">Modificar Zapato</h2>

        <hr><!-- comment -->
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            int cont = 0;

            Connection miconexion = Conect.Conexion.getConexion();// esto es asi pq es estatico
            Statement mistat = miconexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = mistat.executeQuery("select * from zapatos");
            while (rs.next()) {
                cont++;
                if (id == rs.getInt(1)) {
                    break;
                }
            }
            rs.absolute(cont);
        %>
        <form action="modificar.jsp" method="post">

            Id: <input readonly="readonly" type="number" name="id" value="<% out.print(id);%>"><br><br>
            Tipo: <input type="text" name="tipo" value="<% out.print(rs.getString(2));%>"><br><br>
            Modelo: <input type="text" name="modelo" value="<% out.print(rs.getString(3));%>"><br><br>
            Talla: <input type="number" name="talla" value="<% out.print(rs.getInt(4));%>"><br><br>
            <input type="submit" value="Modificar">

        </form>

        <%

            rs.close();
            miconexion.close();
        %>

        <hr><!-- comment -->
        <a class="p-3" href="index.jsp">Volver</a>

    </body>
</html>
