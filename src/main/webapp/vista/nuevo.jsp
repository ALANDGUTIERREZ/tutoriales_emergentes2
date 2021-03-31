
<#@page import="com.emergentes.modelo.LibroDAO"%>
<#@page import="com.emergentes-modelo.Libro"%>
<®@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<meta hetp-equive"Content-Type" content="text/html; charsec=UTF-8">
<title>JSP Page</title>
</nead>
<body>
<%
    Libro item = (libro) request.getAttribute("item");
%>
<hivEditar libro</h1>
<form action="Principal?op=guardar" method="post">
Id: <input type="text" name="id" value="<%= item.getId() %>" size="2)" pattern=" [1-9] (1) [0-9]*"/>
<input type="hidden" name="tipo" value="-1" required/>
<pr>
Titulo: <input type="text" name="titulo" value="<3= item.getTitulo()| $>" required />
<br>
Autor: <input type="text" name="autor? value="<t= item.getAutor() >" />
<br>
Estado: <input type="radio" name="estado" value="1" <%= (item.getEstado() == 1)%>  "checked":"" %> required/> Disponible
<input type="radio" name="estado" value="2" <%= (item.getEstado() == 2) ? "checked":"" %> required=""/> Prestado
<br>
<input type="submit" value="Enviar" />
</form>
</body>
</nem>