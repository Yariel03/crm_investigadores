<%-- 
    Document   : index
    Created on : 8/07/2019, 03:02:58 AM
    Author     : alex-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../template/plantilla/metas.jsp" %>
        <title>Login</title>
    </head>
    <body>
        <div class="container-flex"> 
            <%@include file="../../template/plantilla/header.jsp" %>
            <%@include file="../../template/plantilla/menu.jsp" %>
        </div>
        <div class="container">
            <%@include file="../../principal/login/formulario.jsp" %>
        </div>
    </body>
    <%@include file="../../template/plantilla/js.jsp" %>
</html>
