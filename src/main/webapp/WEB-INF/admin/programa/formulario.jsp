<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-8 offset-md-2">

                    <h1>${programa.id == null ? 'Nuevo Programa' : programa.nombre}</h1>
                    
                    <hr>
                    <form method="post" action="<%=request.getContextPath()%>/admin/programa/save">

                        <input type="hidden" value="${programa.id}" name="id">

                        <div class="form-group">
                            <label class="control-label">Nombre</label>
                            <input type="text" name="nombre" class="form-control" value="${programa.nombre}" >
                        </div>

                        <div class="form-group">
                            <label class="control-label">Descripcion</label>
                            <input type="text" name="descripcion" class="form-control" value="${programa.descripcion}" >
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Código</label>
                                    <input type="text" name="codigo" class="form-control" value="${programa.codigo}" >
                                </div>
                            </div>


                        </div>


                        <div class="form-group text-center mt-4">
                            <a class="btn btn-link" href="<%=request.getContextPath()%>/admin/programa"> Cancelar</a>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>