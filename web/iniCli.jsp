
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/exam.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Futbol Colombia</title>
    </head>
    <body>
        <div class="navbar">
            <div class="logo">FutbolColombia</div>
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
                                        out.print("<div class='dropdown'><button onclick='myFunction()' class='dropbtn'>Ver Tablas</button><div id='myDropdown' class='dropdown-content'><a href='tblf.jsp'>Tabla de fechas</a><a href='tblp.jsp'>Tabla de posiciones</a><a href='tblg.jsp'>Tabla de goleadores</a></div></div>");
                                        out.print("<div class='dropdown'><button onclick='Function()' class='dropbtn'>Equipos</button><div id='myDropdow' class='dropdown-content'><a href='verEquipos.jsp'>Ver Equipos</a><a href='crearEquipos.jsp'>Crear Equipos</a><a href=''>Gestionar Equipos</a></div></div>");
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

</div>
  <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
if (!event.target.matches('.dropbtn')) {
var dropdowns = document.getElementsByClassName("dropdown-content");
var i;
for (i = 0; i < dropdowns.length; i++) {
var openDropdown = dropdowns[i];
if (openDropdown.classList.contains('show')) {
  openDropdown.classList.remove('show');
}
}
}
}
  </script>
  <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function Function() {
document.getElementById("myDropdow").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
if (!event.target.matches('.dropbtn')) {
var dropdowns = document.getElementsByClassName("dropdown-content");
var i;
for (i = 0; i < dropdowns.length; i++) {
var openDropdown = dropdowns[i];
if (openDropdown.classList.contains('show')) {
  openDropdown.classList.remove('show');
}
}
}
}
  </script>

    </body>
</html>
