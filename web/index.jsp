<%-- 
    Document   : index
    Created on : 28-abr-2017, 15:46:10
    Author     : IAN
--%>

<%@page import="controlador.consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>     
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js" ></script> 
        <script src="libs/jquery-1.7.1.js"></script> 
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
                                    out.print("<li><a href='Sesioncerrada'><h5>Cerrar Session " + usuario + "</h5></a></li>");
                                    int niv = Integer.parseInt(nivel);
                                    if (niv == 3) {
                                        out.print("<li><a ><h5>Ver tablas</h5></a></li>");
                                        out.print("<li><a ><h5>Ver equipos</h5></a></li>");
                                    }
                                    if (niv == 1) {
                                        out.print("<li><a ><h5>Ver tablas</h5></a></li>");
                                        out.print("<li><a ><h5>Ver equipos</h5></a></li>");
                                        out.print("<li><a ><h5>Niveles</h5></a></li>");
                                    }
                                } else {                                  
                                    out.print("<li><a href='iniciarSesion.jsp'>Inicio de Sesion</a></li>");
                                     out.print("<li><a href='registro.jsp'>Registro</a></li>");
                                }


                            %>
                    </ul>
                </nav>
            </div>
        </header> 
        <p style="text-align:center;">Seleccione la fecha que quiere consultar:</p>
        <br>
        <div id="selectfechas" >  
            <script type="text/javascript">
                d();
            </script>
            <select id="Ultra" onchange="run()"> 
                <option value="0" selected>Seleccione una fecha:</option>
                <option value="8171">Fecha 1</option>
                <option value="8172">Fecha 2</option>
                <option value="8173">Fecha 3</option>
                <option value="8174">Fecha 4</option>
                <option value="8175">Fecha 5</option>
                <option value="8176">Fecha 6</option>
                <option value="8177">Fecha 7</option>
                <option value="8178">Fecha 8</option>
                <option value="8179">Fecha 9</option>
                <option value="8180">Fecha 10</option>
                <option value="8181">Fecha 11</option>
                <option value="8182">Fecha 12</option>
                <option value="8183">Fecha 13</option>
                <option value="8184">Fecha 14</option>
                <option value="8185">Fecha 15</option>
                <option value="8186">Fecha 16</option>
                <option value="8187">Fecha 17</option>
                <option value="8188">Fecha 18</option>
                <option value="8189">Fecha 19</option>
                <option value="8190">Fecha 20</option>
            </select><br>    
        </div><br>
        <div>                       
            <table   class="fecha" id="tblf">
                <caption><b>Tabla de Fechas</b></caption>
                <thead>
                <th>Fecha</th>
                <th>Arbitro</th>
                <th>Estadio</th>
                <th>Televisión</th>	
                <th>Equipo Local</th>
                <th>Goles local</th>
                <th>Goles visitante</th>
                <th>Equipo Visitante</th>	
                </thead>
                <tbody></tbody>
            </table>         
        </div>

    </body>
</html>
