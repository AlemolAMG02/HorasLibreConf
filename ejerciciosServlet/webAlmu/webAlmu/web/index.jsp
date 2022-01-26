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
    <body style="">
        <%  // ResultSet rs = new p1.ejecuta("select * from alumnos").getResult();
/*            Connection miconexion = Conect.Conexion.getConexion();// esto es asi pq es estatico
           Statement mistat = miconexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                   ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = mistat.executeQuery("select * from zapatos");
           //RECORRE LOS VALORES DE LA TABLA
           while (rs.next()) {
               out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getInt(4));
               out.println("<BR>");
           }
            
            
           //BORRA DE PRIMARY KEY
        //   rs.absolute(1);
        //   rs.deleteRow();
         
         
           //MODIFICA LA FILA
           rs.absolute(1); // PRIMERO TE COLOCAS EN LA FILA QUE QUIERES MODIFICAR
           rs.updateString("tipo", "depor");
           rs.updateRow();
             


           rs.beforeFirst();// VUELVE AL PRINCIPIO PARA PODER VOLVER A RECORRERLO

           while (rs.next()) {
               out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getInt(4));
               out.println("<BR>");
           }

           rs.close();
           miconexion.close();
            
             */
        %>



        <div class="border border-info p-5 m-5">
            <h1 class="text-center">TIENDA DE ZAPATOS</h1>
            <div class=" d-flex justify-content-center m-3">
                <form action="vistaInsertar.jsp" method="post">
                    <input type="submit" value="Insertar">
                </form>
                <br>
                <form action="mostrar.jsp" method="post">
                    <input type="submit" value="Mostrar todos los productos">
                </form>
                <form action="vistaModificar.jsp" method="post">
                    <input type="submit" value="Modificar producto">
                </form>
                <br>
                <form action="vistaBorrar.jsp" method="post">
                    <input type="submit" value="Borrar producto">
                </form>
            </div>
        </div>
    </body>
</html>
