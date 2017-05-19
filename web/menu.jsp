<%-- 
    Document   : menu
    Created on : 28-abr-2017, 16:20:43
    Author     : IAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession objsesion = request.getSession(false);
    String usuario = (String) objsesion.getAttribute("logueado");
    if (usuario.equals("")) {
        response.sendRedirect("index.jsp");
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FUTBOLCOLOMBIA</title>
    </head>
    <body>
        <h1>HOLA! <% out.println(usuario);%>... Tu ingreso fue correcto.</h1>
    </body> 
</html>
