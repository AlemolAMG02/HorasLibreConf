<%-- 
    Document   : borrarAl
    Created on : 14 dic 2021, 9:49:21
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
    <div class="row bg-warning">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Gestor Alumnos</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
             aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
        <%
            if(request.getParameter("eliminar") != null){
                if(!request.getParameter("selectAl").isEmpty() ){
                  int cod = Integer.parseInt(request.getParameter("selectAl"));
                  out.println("Codigo: " + cod);
                  //out.println("Entro en el botón añadir");
                  ResultSet rs= new p1.ejecuta("select * from alumnos WHERE cod =" + cod).getResult();
                  rs.next();
                  out.println("Cod : " + rs.getInt(1) + " , Nombre: " + rs.getString(2));
                  //rs.absolute(cod);
                  rs.deleteRow(); 
                   out.println("<h2 class='bg-light text-success mt-3'>Eliminado correctamente </h2>");
                } else {
                  out.println("<h2 class='text-danger bg-light mt-3'> ERROR AL ELIMINAR </h2>");
                }
          }
         %>
       
            <div id="borrar" class="col p-3 bg-warning">
        <h1>Eliminar alumno</h1>
        <form action="" method="post">
          <div class="row">
            <div class="col mb-3 mt-3">
              <label for="selectAl" class="form-label"
                >Nombre Alumno:</label
              >
              <select name="selectAl" class="form-select">
                  <%
                      ResultSet rs1= new p1.ejecuta("select * from alumnos ORDER BY cod").getResult(); 
                      //rs.absolute(1);
                      while (rs1.next()){
                        out.print("<option value='" + rs1.getInt(1) + "'>");
                        out.print(rs1.getInt(1)+". "+rs1.getString(2));
                        out.print("</option>");
                       }
                     // */
                  %>
                  
              </select>
            </div>
            
          </div>
          <input type="submit" class="btn btn-light" value="Eliminar" name="eliminar" />
        </form>
        
        
      </div>
        </div>
        
        
    </body>
</html>
