<%-- 
    Document   : aniadirAl
    Created on : 14 dic 2021, 9:38:56
    Author     : alemol
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Gestor Alumnos</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="index.jsp">Mostrar Alumnos</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./aniadirAl.jsp">Añadir Alumno</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./borrarAl.jsp">Eliminar Alumno</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <div id="principal" class="row">
        <div id="aniadirNota" class="col p-3 bg-success">
        <h1>Añadir Nota</h1>
        <form action="" method="post">
          <div class="row">
            <div class="col mb-3 mt-3">
              <label for="nombreAlumno" class="form-label"
                >Nombre Alumno:</label
              >
              <input
                type="text"
                name="nombreAl"
                id="nombreAl"
                placeholder="Nombre del Alumno"
                class="form-control"
              />
            </div>
            <div class="col mb-3 mt-3">
              <label for="nota" class="form-label">Nota: </label>
              <input
                type="number"
                name="nota"
                id="nota"
                placeholder="Nota entre 1 y 10"
                class="form-control"
              />
            </div>
          </div>
          <input type="submit" class="btn btn-light" value="Añadir" name="aniadir" />
        </form>
        <%
            if(request.getParameter("aniadir") != null){
            if(!request.getParameter("nombreAl").isEmpty() && !request.getParameter("nota").isEmpty()){
              String nombre = request.getParameter("nombreAl");
              int nota = Integer.parseInt(request.getParameter("nota"));
              //out.println("Entro en el botón añadir");
              ResultSet rs= new p1.ejecuta("select * from alumnos").getResult();
              //rs.absolute(0);
              rs.moveToInsertRow();
              rs.updateString("nombre", nombre);
              rs.updateInt("nota", nota);
              rs.insertRow();
               out.println("<h2 class='bg-light text-success mt-3'>Nota del alumno introducida correctamente </h2>");
            } else {
              out.println("<h2 class='text-danger bg-light mt-3'> ERROR AL LEER DATOS </h2>");
            }
          }
         %>
        
      </div>
     </div>
        
        
    </body>
</html>
