<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Hola Mundo JSP</title>
</head>
<body>

	<!-- html estático -->
	<h1>Hola Mundo JSP</h1>
	
	
	<% 
		// dentro de estas etiquetas podemos programar en Java
		String mensaje = new String("<p>Mensaje generado desde código JSP</p>");

		// mostrando html dinámico
		out.println(mensaje.toLowerCase());
	%>

</body>
</html>