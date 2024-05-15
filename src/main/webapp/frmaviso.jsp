<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Formulario de Estudiante</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>  <div class="container">   
<h1>
    <c:if test="${estudiante.id == 0}">Nuevo</c:if>
    <c:if test="${estudiante.id != 0}">Editar</c:if>
    estudiante
</h1>

<form action="inicio" method="post">
    <input type="hidden" name="id" value="${estudiante.id}" />
    <table>
        <tr>
            <td>Nombre:</td>
            <td><input type="text" name="nombre" value="${estudiante.nombre}"/></td>
        </tr>
        <tr>
            <td>Apellidos:</td>
            <td><input type="text" name="apellidos" value="${estudiante.apellidos}"/></td>
        </tr>
        <tr>
            <td>Seminarios:</td>
            <td><input type="number" name="sseminarios" value="${estudiante.sseminarios}"/></td>
        </tr>
        <tr>
            <td>Confirmado:</td>
            <td><input type="checkbox" name="confirmado" value="true" <c:if test="${estudiante.confirmado}">checked</c:if> /></td>
        </tr>
        <tr>
            <td>Fecha de Inscripción:</td>
            <td><input type="text" name="fecha_inscripcion" value="${estudiante.fechaInscripcion}"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" class="btn btn-primary" value="Guardar" /></td>
        </tr>
    </table>
</form></div>
         <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
