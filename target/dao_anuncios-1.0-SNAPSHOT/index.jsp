<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lista de Estudiantes</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body><div class="container">
<h1>Lista de Estudiantes</h1>
<p><a class="btn btn-succes" href="inicio?action=add">Nuevo</a></p>

<table border="1">
    <tr>
        <th>Id</th>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Seminarios</th>
        <th>Confirmado</th>
        <th>Fecha de Inscripción</th>
        <th></th>
        <th></th>
    </tr>
    <c:forEach var="estudiante" items="${estudiantes}">
        <tr>
            <td>${estudiante.id}</td>
            <td>${estudiante.nombre}</td>
            <td>${estudiante.apellidos}</td>
            <td>${estudiante.sseminarios}</td>
    <td><input type="checkbox" name="confirmado" <c:if test="${estudiante.confirmado}">checked</c:if> /></td>

            <td>${estudiante.fechaInscripcion}</td>
            <td><a href="inicio?action=edit&id=${estudiante.id}">Editar</a></td>
            <td><a href="inicio?action=delete&id=${estudiante.id}" onclick="return(confirm('¿Estás seguro de eliminar este estudiante?'))">Eliminar</a></td>
        </tr>
    </c:forEach>
</table>
</div>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
   
</body>
</html>
