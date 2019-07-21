<%-- 
    Document   : modelo
    Created on : 16/07/2019, 01:14:47 AM
    Author     : alex-
--%>

<%@page import="java.util.Vector"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.Base64"%>
<%String datos=request.getParameter("datos");
    String cedula="";
    String clave="";
    String nombre="";
    String apellido="";
    String rol="";
    byte[] decodedBytes = Base64.getDecoder().decode(datos);
    String json = new String(decodedBytes);
     HttpSession sesion = request.getSession();
    if (json!=null) {
        JSONObject item=new JSONObject(json);
         cedula=item.get("cedula").toString();
         apellido=item.get("apellido").toString();
         nombre=item.get("nombre").toString();
         rol=item.get("rol").toString();
         
         Vector Vdatos=new Vector();
        Vdatos.addElement(cedula);//se añade la cedula
        Vdatos.addElement(rol);//se añade el tipo
        Vdatos.addElement(apellido);//se añade el tipo
        Vdatos.addElement(nombre);//se añade el tipo
           session.setAttribute("usuario", Vdatos);
        }
    
if (rol.equals("1")) {
        response.sendRedirect("../../roles/director/");
    }
if (rol.equals("2")) {
        response.sendRedirect("../../roles/jefeGrupo/");
    }
if (rol.equals("3")) {
        response.sendRedirect("../../roles/jefePrograma/");
    }
if (rol.equals("4")) {
        response.sendRedirect("../../roles/jefeProyecto/");
    }
if (rol.equals("5")) {
        response.sendRedirect("../../roles/investigador/");
    }
if (rol.equals("6")) {
        response.sendRedirect("../../roles/invitado/");
    }
%>
