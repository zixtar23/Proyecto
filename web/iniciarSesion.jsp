<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session = "true"%>
<!DOCTYPE html>
<html>
     <head>     
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js" ></script> 
        <script src="libs/jquery-1.7.1.js"></script>
        <script src="js/tablaJSONP.js"></script> 
        <script src="js/tablaJSONF.js"></script>  
        <script src="js/menu.js"></script>
        <link href="css/tablas.css" rel="stylesheet" type="text/css">
        <link href="css/menu.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FutbolColombia</title>
    </head>
    <body>   
         <header>
            <div class="contenedor">
                <nav class="menu">                   
                    <ul>
                        <a title="Home" href="http://localhost:8080/FutbolColombia/index.jsp"><img src="http://dummyimage.com/200x100/000/fff&text=LOGO" alt="Inicio" /></a>
                         <%
                            HttpSession sesion = request.getSession();
                            String usuario;
                            String nivel;                         
                                
                            if (sesion.getAttribute("usuario") != null && sesion.getAttribute("nivel") != null) {
                                usuario = sesion.getAttribute("usuario").toString();
                                nivel = sesion.getAttribute("nivel").toString();                    
                                out.print("<li><a href='Sesioncerrada'><h5>Cerrar Session " + usuario +"</h5></a></li>");
                                int niv =Integer.parseInt(nivel);                              
                            } else {
                                out.print("<li><a href='registro.jsp'>Registrarme</a></li>");
                            }


                        %>
                    </ul>
                </nav>
            </div>
        </header>  
                 <h1>Iniciar Sesion</h1>
                <form action="iniciar" method="post" id="forminicio">
                    <label> Correo:<label/><br>
                        <input type="text" name="usuario" id="textusuario" placeholder="Correo"/><br>
                        <label> Contraseña:<label/><br>
                            <input type="password" name="contrasena" id="textcontrasena" placeholder="Contraseña"/><br>
                            <input type="submit" value="iniciar sesion" id="btniniciar" name="btniniciar"/><p>
                            </form>
                            <br>
                            <h5>¿No tienes una cuenta? <a href="registro.jsp">Registrarme</a></h5>
        <%
            if (request.getParameter("cerrar") != null) {
                session.invalidate();
            }
        %>
</div>
    </body>
</html>
