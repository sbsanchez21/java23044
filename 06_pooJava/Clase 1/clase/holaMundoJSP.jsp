<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Hola Mundo JSP</title>
</head>
<body>

	<!-- html est�tico -->
	<h1>Hola Mundo JSP</h1>
	
	
	<% 
		// dentro de estas etiquetas podemos programar en Java
		String mensaje = new String("<p>Mensaje generado desde c�digo JSP</p>");

		// mostrando html din�mico
		out.println(mensaje.toLowerCase());
	%>

</body>
</html>