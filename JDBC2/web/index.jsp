<%-- 
    Document   : index.jsp
    Created on : 08-ene-2019, 10:49:13
    Author     : alejandro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Latest compiled and minified CSS -->
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
      
      <div id="mostrar" class="col p-2 bg-primary">
        <h1>Mostrar</h1>
        <form action="" method="post">
          
            <input type="submit" class="btn btn-light" value="Mostrar" name="mostrar" />
        </form>
        
        <% 
            if(request.getParameter("mostrar") != null){
                out.println("<table class='table table-striped bg-light mt-3'>");
                out.println("<tr><th>Codigo</th><th>Nombre</th><th>Nota</th></tr>");
                ResultSet rs= new p1.ejecuta("select * from alumnos").getResult();  
                while (rs.next()){
                    out.println("<tr>");
                    out.println("<td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td> "+rs.getInt(3)+"</td>");
                    out.println("</tr>");
                    
                }
                out.println("</table>");
            } else 
                out.println("Boton no pulsado");
            //rs.close();
            
            
        %>
        
      </div>
    </div>
        
        
    <%   
        
        
        // Ejemplo Profesor
      
      /*ResultSet rs= new p1.ejecuta("select * from alumnos").getResult();
      while (rs.next()){
            out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
            out.println("<BR>");
        }
      //rs.absolute(3);
      //rs.deleteRow();
      */
      
       
       /* 
        rs.updateString("nombre", "juana");
        rs.updateRow();
        
        
        
        rs.moveToInsertRow();
        rs.updateString(1, "a4");
        rs.updateString(2,"antonio");
        rs.updateString("apellidos", "perez");
        rs.updateInt("nota", 2);
        rs.insertRow();*/
        
        
        %>
    
        <h1>Hello World!</h1>
    </body>
</html>
