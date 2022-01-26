<%-- 
    Document   : vistaInsertar
    Created on : 12-dic-2021, 11:49:19
    Author     : ASUS
--%>

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
        <h2 class="text-center">Inseta el Zapato</h2>
        <div class="d-flex justify-content-center m-3">
            <form action="insertar.jsp" method="post">
                Tipo: <input type="text" name="tipo"><br><br><!-- comment -->
                Modelo: <input type="text" name="modelo"><br><br>
                Talla: <input type="number" name="talla"><br><br>
                <center>
                    <input type="submit" name="guardar" value="Guardar">
                </center>
            </form>
        </div>
        <hr><!-- comment -->
        <a class="p-3" href="index.jsp">Volver</a>

    </body>
</html>
