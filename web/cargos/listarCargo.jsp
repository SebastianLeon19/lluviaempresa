<%-- 
    Document   : listarcargo
    Created on : 16-11-2019, 19:13:17
    Author     : Diegoandres
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Cargo"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #00B6A0">
        <h1>Cargos</h1>
        <a href="Controlador?accion=addcargo"><img src="iconos/añadir2.png"  height="70"></a>
        <table border="1">
            <thead>
                <tr>
                    <th>Codigo Cargo</th>
                    <th>Nombre Cargo</th>

                    <th>ACCIONES</th>
                </tr>
                <%
                    CargoDAO dao = new CargoDAO();
                    List<Cargo> list = dao.listarCargo();
                    Iterator<Cargo> iter = list.iterator();
                    Cargo per = null;
                    while (iter.hasNext()) {
                        per = iter.next();
                %>
                <tr>
                    <td><%= per.getId_Cargo()%></td>
                    <td><%= per.getDescripcion()%></td>



                    <th>


                        <a href="Controlador?accion=eliminarCargo&id=<%= per.getId_Cargo()%>"><img src="iconos/eliminar.png"  height="70"></a>

                    </th>




                    </th>
                </tr>
                <%
              }%>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
