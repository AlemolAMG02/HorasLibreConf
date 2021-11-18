<%-- 
    Document   : ejercicio01
    Created on : 17 nov 2021, 14:27:39
    Author     : alemol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contador de visitas</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        int numVisitas = 0;
        if(!session.isNew()){
            Cookie[] galletas = request.getCookies();
            for (Cookie ck : galletas) {
                   if(ck.getName().equals("visual")) {
                       numVisitas = Integer.parseInt(ck.getValue());
                       numVisitas++;
                       ck.setValue(""+numVisitas);
                   }
                }
            String valor=null;
        } else{
            Cookie galleta = new Cookie("visual","1");
            numVisitas = Integer.parseInt(galleta.getValue());
        }
        %>
        <p>Visitas del sitio: <% out.print(numVisitas); %></p>
    </body>
</html>
