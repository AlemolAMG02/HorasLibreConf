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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head><body>
    <%   
      ResultSet rs= new p1.ejecuta("select * from alumnos").getResult();
      while (rs.next()){
            out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
            out.println("<BR>");
        }
      rs.absolute(3);
      //rs.deleteRow();
      
      
       
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
