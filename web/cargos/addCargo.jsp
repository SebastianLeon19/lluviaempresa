<%-- 
    Document   : addCargo
    Created on : 17-11-2019, 10:27:01
    Author     : Diegoandres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #00B6A0">
        <form action= "Controlador">
            Codigo Cargo:<br>
            <input type="text" name="txtIdcargo"><br>
            Nombre del Cargo:<br>
            <input type="text" name="txtNombre"><br>

            <input  type="submit" name="accion" value="AgregarCargo" class="btn btn-primary btn-sm"><br/>


        </form>
    </body>
</html>
