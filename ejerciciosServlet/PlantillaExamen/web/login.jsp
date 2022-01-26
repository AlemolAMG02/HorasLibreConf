<%-- 
    Document   : login
    Created on : 15 dic 2021, 22:18:57
    Author     : alemol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- Latest compiled and minified CSS -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            />
        <title>Login Examen</title>
    </head>
    <body>
        <div id="principal" class="row d-flex justify-content-center">
            <div class="col-6 border m-2 p-3">
                <h1 class="text-center">Login Examen</h1>
                <form action="login" method="post">
                    <div class="mb-3 mt-3">
                        <label for="user" class="form-label">Usuario:</label>
                        <input type="text" class="form-control" id="user" placeholder="Nombre de usuario" name="user">
                    </div>
                    <div class="mb-3">
                        <label for="pass" class="form-label">Contraseña:</label>
                        <input type="password" class="form-control" id="pass" placeholder="Contraseña" name="pass">
                    </div>
                    <input type="submit" class="btn btn-primary" value="Entrar">
                    <input type="hidden" id="id" name="name" value="value">
                </form>
            </div>
        </div>

    </body>
</html>
