<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cursos</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <a href="<%=request.getContextPath()%>/admin/programa/nuevo" class="btn btn-primary float-right" >Nuevo</a>
                    <h1>Cursos</h1>

                    <table class="table table-hover table-striped">
                        <thead>
                            <tr>
                                <th>Curso</th>
                                <th>Código</th>
                                <th>Fecha Inicio</th>
                                <th>Programa</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="i" items="${programas}">
                                <tr>
                                    <td>${i.nombre}</td>
                                    <td>${i.descripcion}</td>
                                    <td>${i.codigo}</td>

                                    <td>
                                        <a href="<%=request.getContextPath()%>/admin/programa/update/${i.id}">Editar</a>
                                        <a href="<%=request.getContextPath()%>/admin/programa/delete/${i.id}">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>


                </div>
            </div>
        </div>
    </body>
</html>
