<t@page import="com.emergentes.modelo.libroDAO"@>
<t@page import="com.emergentes.modelo.libro"@>
<t@page contentType="text/htmi" pageEncoding="UTF-8"4>
<!DOCTYPE html>
<hemi>
<head>
<meta hetp-equiv="Content-Type" content="text/ntml; charset=UTF-2">
<titleDJSP Page</title>
</nead>
<body>
<
Labro item = (Libro) request.getAttribute ("item")
>
<hivEditar libro</hi>
<form action="Principal?op=guardar" method="post">
Id: <input type="text" name="id" value="<%= item.getId() %>" size="2
<input type="hidden" name="tipo" value="<%= item.getId() %>" required/>
<br>
Titulo: <input type="text" name="titulo" value="<= item.getTitulo()
<pre>
Autor: <input type="text" name="autor" value="<#= dtem.getautor() %:
<br>
Estado: <input type="radio" name="estado" value="i" <= (item. getEsti
<input type="radio" name="estado" value="2" <= (item.getEstado() ==
<br>
<input type="submit" value="Enviar® />
</form>
</body>

</aemi>

import="com. emergentes.modelo.LibroDAO"#>


 

 

  

 

 

pattern
a/>

a5" required />

>

do() == 1) ? "checked"

2) 2 "checked"

 

[2-9] (2) (0-9) #"/>

 

> required/> Disponible
> required=""/> Prestado