<%-- 
    Document   : index
    Created on : Mar 11, 2019, 9:37:08 PM
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
        <form action="servletsalida" method="post" >
            <label for ="txtnombre" >nombre</label>
            <input type="text" name="txtnombre" id="txtnombre" placeholder="nombre" required>
            <br>
            <label for ="txtapellidop" >apellido paterno</label>
            <input type="txtapellidop" name="txtapellidop" id="txtnombre" placeholder="nombre" required>
            <br>
            <label for ="txtapellidom" >apellido materno</label>
            <input type="text" name="txtapellidom" id="txtapellidom" placeholder="nombre" required="">
            <br>
            <label for ="cedula" >cedula</label>
            <input type="text" name="cedula" id="cedula" placeholder="nombre" required>
            <br>
            <input type="submit" value="enviar datos">
        </form>
    </body>
</html>
