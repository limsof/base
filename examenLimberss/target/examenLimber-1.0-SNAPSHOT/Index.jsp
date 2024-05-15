<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Index
    Created on : 14 may. 2024, 19:41:51
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <style>
        .datos{
    margin-top:20px;
    width:400px;
    border:2px solid black;
    text-align: center;
    justify-content: center;
    margin: 0 auto;
    text-align: center;
}
.centrado{
    border:0px solid black;
    border:2px solid black;
}

h3{
    font-size:25px;
    margin-left:7px;
    background:white;
}
.div {
    text-align: center;
    
    
}

h1{
    text-align: center;
}

.table {
    margin: 0 auto;
    width: 80%
}
    </style>
    
    <body>
        <div class="div">

            <h3>SEGUNDO PARCIAL TEM-742</h3>
            <h3>Nombre: Limber Mamani Canaza</h3>
            <h3>Carnet: 13213468 LP</h3>

        </div>
        <h1 >Registro Día del Internet</h1>
        <p><a href="Inicio?action=add">Nuevo</a></p>

        <table border="1" class="table">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Seminario</th>
                <th>Confirmado</th>
                <th>Fecha</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="estudiante" items="${estudiantes}">
                <tr>
                    <td>${estudiante.id}</td>
                    <td>${estudiante.nombres}</td>
                    <td>${estudiante.apellidos}</td>
                    <td>${estudiante.seminario}</td>
                    <td>${estudiante.confirmado == 1 ? '0' : 'X'}</td>
                    <td>${estudiante.fecha}</td>
                    <td><a href="Inicio?action=edit&id=${estudiante.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${estudiante.id}" onclick="return confirm('¿Está seguro de eliminar este estudiante?')">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
