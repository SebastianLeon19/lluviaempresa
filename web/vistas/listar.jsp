
<%-- 
    Document   : lista
    Created on : 10-10-2019, 21:45:54
    Author     : Diegoandres
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #00B6A0">
        
        <h1>Listado de datos personales</h1>
        <a href="Controlador?accion=add" class="btn btn-danger btn-sm"><img src="iconos/aregar.png"  height="70"></a>
        
        <table border="1">
            <thead>
                <tr>
                    <th>Rut</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>Codigo de empleado</th>
                    <th>ACCIONES</th>
                </tr>
                <%
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona> list = dao.listar();
                    Iterator<Persona> iter = list.iterator();
                    Persona per = null; 
                    while(iter.hasNext()){
                        per = iter.next();
                %>
          <tr>
              <td><%= per.getRut()%></td>
                    <td><%= per.getNom()%></td>
                    <td><%= per.getApellido()%></td>
                    <td><%= per.getEmail()%></td>
                    <td><%= per.getId_empleado()%></td>
                    
                 <th>
                     <a href="Controlador?accion=editar&rut=<%= per.getRut()%>"><img src="iconos/editar.png"  height="50"></a>
                     <a href="Controlador?accion=eliminar&rut=<%= per.getRut()%>"><img src="iconos/eliminar.png"  height="50"></a>
                       
  
                     
                     
                    
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
