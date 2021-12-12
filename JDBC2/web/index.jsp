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
                name="nombreAlumno"
                id="nombreAlumno"
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
          <input type="submit" class="btn btn-light" value="Entrar" />
        </form>
      </div>
      <div id="mostrar" class="col p-2 bg-primary">
        <h1>Mostrar</h1>
        <form action="" method="post">
          <div class="row">
            <div class="col mb-3 mt-3 bg">
              <label for="nombreAlumno" class="form-label"
                >Nombre Alumno:</label
              >
              <select name="alumno" id="alumno" class="form-select">
                <option value="*">*</option>
              </select>
            </div>
          </div>
            <input type="submit" class="btn btn-light" value="Mostrar" name="mostrar" />
        </form>
        
        <% 
            if(request.getParameter("mostrar") != null){
                ResultSet rs= new p1.ejecuta("select * from alumnos").getResult();
                while (rs.next()){
                    out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
                    out.println("<BR>");
                }
            } else 
                out.println("Nada que mostar");
            
            
        %>
        
      </div>
    </div>
    <%   
      //ResultSet rs = Conexion.getConexion();
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
