<%-- 
    Document   : salida
    Created on : Mar 11, 2019, 9:37:21 PM
    Author     : MARTIN2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="beanPersona" class="beans.beanPersona" scope="request" ></jsp:useBean>
        <h1>datos recibidos</h1>
        <br>
        <b>nombre: <%=beanPersona.getNombre()%></b>
        <br>
        <b>apellidop: <%=beanPersona.getApellidop()%></b>
        <br>
        <b>apellidom: <%= beanPersona.getApellidom()%></b>
        <br>
        <b>cedula: <%=beanPersona.getCedula()%></b> 
    </body>
</html>
