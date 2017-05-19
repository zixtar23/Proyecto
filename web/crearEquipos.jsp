<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Futbol Colombia</title>
    </head>
    <body>
         <h1>Crear un equipo:</h1>
         <form action="Crear" method="post" enctype="multipart/form-data">
        <label>Nombre del equipo: </label><br>
        <input type="text" name="nombre"/><br>
        <label>Estadio: </label><br>
        <input type="text" name="estadio"/><br>
        <label>Fecha de fundacion: </label><br>
        <input type="number" name="fecha_fundacion"/><br>
        <label>Ruta de imagen: </label><br>
        <input type="file" name="fecha_fundacion"/><br>
        <label>Nombre de Imagen: </label><br>
        <input type="text" name="fecha_fundacion"/><p>
        <input type="submit" value="Crear Equipo"/>
        </form>
    </body>
</html>
