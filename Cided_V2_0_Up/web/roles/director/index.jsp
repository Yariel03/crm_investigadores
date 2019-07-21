<%-- 
    Document   : index
    Created on : 15/07/2019, 10:25:39 PM
    Author     : alex-
--%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.Base64"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../template/plantilla/metas.jsp"%>
        <title>Director</title>
    </head>
    <body>
            <%@include file="../../template/plantilla/header.jsp" %>
            <%@include file="../../template/plantilla/menuRoles.jsp" %>
        <div class="container ">
            <%@include file="../../template/plantilla/datosGenerales.jsp" %>

          
            <div class="row  mt-5 " style="  background-color: rgba(224, 221, 221, 0.54)" >
                <div class="col-md-2"></div>
                
                 <div class="col-md-4 mt-5 mb-3 rounded shadow btn btn-outline-light border border-secondary" style="height: 300px;">
                      <div id="chartdiv" style="height: 100%; width: 100%"></div> 
                </div>
                <div class="col-md-4">
                    
                    <form class="shadow p-3 mt-5 mb-5  rounded">
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Faculty select</label>
                            <select class="form-control" id="exampleFormControlSelect1">
                                <option>...</option>
                                <option>FIE</option>
                                <option>FADE</option>
                                <option>FRN</option>
                                <option>FM</option>
                                <option>FC</option>
                                <option>FSP</option>
                                <option>FCP</option>
                            </select>
                        </div>
                        <div class="form-group ">
                            <a class="btn btn-danger text-light">Add faculty</a>
                        </div>
                    </form>
                </div>
               
               
                
            </div>
           
        </div>
    </body>
    <%@include file="../../template/plantilla/js.jsp" %>
    <%@include file="../../template/graficos/graficoGeneral.jsp" %>
   
    
    
</html>
