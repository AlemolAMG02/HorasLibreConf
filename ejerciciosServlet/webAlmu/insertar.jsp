<%-- 
    Document   : insertar
    Created on : 12-dic-2021, 11:56:56
    Author     : ASUS
--%>

<%@page import="Model.Zapato"%>
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
        <%
            String tipo = request.getParameter("tipo");
            String modelo = request.getParameter("modelo");
            int talla = Integer.parseInt(request.getParameter("talla"));
            int num = 0;
            Connection miconexion = Conect.Conexion.getConexion();// esto es asi pq es estatico
            Statement mistat = miconexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

            ResultSet rs = mistat.executeQuery("select * from zapatos");
            while (rs.next()) {
                num = rs.getInt(1);
            }

            num+=1;
            rs.moveToInsertRow();
            rs.updateInt("id", num);
            rs.updateString("tipo", tipo);
            rs.updateString("modelo", modelo);
            rs.updateInt("talla", talla);
            rs.insertRow();
            

            rs.close();
            miconexion.close();
        %>
        
        <h2>ZAPATO INSERTADO</h2>
        <hr>
        <a class="p-3" href="index.jsp">Volver</a>
    </body>
</html>
