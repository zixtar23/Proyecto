<%-- 
    Document   : tblp
    Created on : 10-may-2017, 19:12:33
    Author     : IAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>     
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js" ></script> 
        <script src="libs/jquery-1.7.1.js"></script> 
        <script src="js/tablaJSONP.js"></script>  
        <link href="css/tablas.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FutbolColombia</title>
    </head>
    <body>              <%
        HttpSession sesion = request.getSession();
        String usuario;
        String nivel;

        if (sesion.getAttribute("usuario") != null && sesion.getAttribute("nivel") != null) {
            usuario = sesion.getAttribute("usuario").toString();
            nivel = sesion.getAttribute("usuario").toString();
        } else {
            out.print("<script>location.replace('index.jsp');</script>");
        }


        %>
        <table  id="tblp" class="fecha">
            <caption><b>Tabla de Posiciones</b></caption>
            <thead>
            <th>Posicion</th>
            <th>Equipo</th>
            <th>pt</th>
            <th>pj</th>
            <th>pg</th>			
            <th>pe</th>
            <th>pp</th>
            <th>gf</th>
            <th>gc</th>
            <th>gd</th>			
        </thead>
        <tbody></tbody>
    </table>         

</body>
</html>
