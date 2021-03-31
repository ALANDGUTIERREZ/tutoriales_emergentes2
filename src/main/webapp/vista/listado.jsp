<%@page import="com.emergentes.modelo.libro"%>
<%@page import="com.emergentes.modelo.libroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            libroDAO lista =(libroDAO) session.getAttribute("gestor");
        %>
        <h1>listado</h1>
        <p><a href="../principal?op=nuevo">nuevo </a> </p>
    <% 
    if (lista.getLibros().size()>0) {
       
  
    %>
    <table border="1">
        <tr>
            <th>id</th>
            <th>titulo</th>
            <th>autor</th>
            <th>estado</th>
            <th></th>
            <th></th>
        </tr>
        <%
            for (libro item: lista.getLibros()){ 
        %>
        <tr>
            <td><%=item.getId()%></td>
             <td><%=item.getTitulo()%></td>
              <td><%=item.getAutor()%></td>
               <td><%=item.getEstado()%></td>
               <td>href="../principal?op=editar&id" <%=item.getId()%>editar> </a></td>
               <td>href="../principal?op=eliminar&id" <%=item.getId()%>eliminarr> </a></td>
        </tr>
         <%
         }
         %>
          <table>
               <%
         }
         else{
        out.println("<p>no esisten resgistros");
            }
         %>
    </body>
</html>
