<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>plexura</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    </head>
    <body>

        <div class="p-5 mb-4 bg-light rounded-3">
            <div class="text-center">
                <h1 class="display-4 fw-bold mb-4">plexura</h1>
                <h6 class="text-muted text-monospace">Cuadrante de multiplicaciones dinámico</h6>
                <h6 class="text-muted text-monospace">Procesamiento en entorno servidor con JSP</h6>
                <h6 class="text-muted text-monospace">Con formulario generador de tabla</h6>
            </div>
        </div>
        <%
            Integer i, j;
            Integer ancho = Integer.parseInt(request.getParameter("ancho"));
            Integer alto = Integer.parseInt(request.getParameter("alto"));
            Integer max=30;
            if (ancho == null || ancho > max || ancho < 1 || alto == null || alto > max || alto < 1) {
        %>        
        <div class="p-5 mb-4">
            <div class="text-center">
                <h6 class="text-muted text-monospace">Datos alto y ancho erroneos:</h6>
                <h6 class="text-muted text-monospace">Por favor introduce valores de ancho y alto entre 1 y <%=max%></h6>
            </div>
        </div>       
        <%  } else {  %>        
        <table class="table table-bordered table-success table-striped mx-auto mt-5" style="width: 500px;"
               id="tabla">        
            <%
                for (i = 1; i <= alto; i++) {
            %>
            <tr>
                <%
                    for (j = 1; j <= ancho; j++) {
                %>
                <td class="text-center"><%=i * j%></td>
                <%}%>
            </tr>
            <%}%>
        </table>
        <%}%>
        <div class="text-center">
        <a class="btn btn-danger mt-4" href="index.html">Volver</a>
        </div>
    </body>
</html>
