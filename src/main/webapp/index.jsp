<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%
    ArrayList<Persona> lista =(ArrayList<Persona>)session.getAttribute("listaper");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>listado de personas</h1>
        <a href="MainController?op=nuevo">Nuevo registro</a>
        <table border ="1">
            <tr>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>APELLIDO</th>
                <th>EDAD</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista != null){
                    for(Persona item : lista){
            %>
            <tr>
                <th><%= item.getId() %></th>
                <th><%= item.getNombres() %></th>
                <th><%= item.getApellidos() %></th>
                <th><%= item.getEdad() %></th>
                <th><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></th>
                <th><a href="MainController?op=eliminar$id=<%= item.getId() %>"
                       onclick="return confirm('estas seguro eliminar el registro');">Eliminar</a></th>
                <th></th>
            </tr>
            <%
                     }
                }
            %>
        </table>
    </body>
</html>
