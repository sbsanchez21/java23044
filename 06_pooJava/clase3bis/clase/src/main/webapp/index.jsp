<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"		rel="stylesheet"		integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"		crossorigin="anonymous">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>

	<div class="container">
	
		<h4 class="text-center fs-3 my-4">Listado Usuarios</h4>
	
		<button class="btn btn-primary my-3">Agregar usuario</button>
		
		
		<table class="table text-center">
			<thead class="table-dark">
				<tr>
					<th scope="col">#ID</th>
					<th scope="col">User</th>
					<th scope="col">Password</th>
					<th scope="col">Operaciones</th>
				</tr>
			</thead>
			<tbody>
				<!-- programar en java, conectarme a la db, traer los usuarios y generar un tabla en html con los usuarios -->
				<%
				//traigo el achivo/clase conexionDB para utilizarlo
				ConexionDB conexion=new ConexionDB();
				//se conecta a la db
				Statement st=conexion.conectar();
				// st es una conexión a la db, le podemos hacer consultas
				//en rs voy a tener el resultado del select, listado de usuarios
				ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
				
				while(rs.next()) {
					out.println("<tr>");
					
					out.println("<td>");
					out.println(rs.getInt("idusuario"));
					out.println("</td>");

					out.println("<td>");
					out.println(rs.getString("usuario"));
					out.println("</td>");
					
					out.println("<td>");
					out.println(rs.getString("clave"));
					out.println("</td>");

					out.println("<td>");
					out.println("<i class='bi bi-pencil-fill m-1'></i>");
					out.println("<i class='bi bi-trash3-fill m-1'></i>");
					out.println("</td>");
					
					
					out.println("</tr>");
				}
				
				
				%>
			</tbody>
		</table>
	

		
	</div>
		
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"		crossorigin="anonymous"></script>
</body>
</html>