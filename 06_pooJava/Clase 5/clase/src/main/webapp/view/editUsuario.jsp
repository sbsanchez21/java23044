<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body>
	<%
	String id=request.getParameter("id");
	String user=new String();
	String pass=new String();
	try {
		ConexionDB con=new ConexionDB();
		Statement st=con.conectar();
		ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE idusuario="+id);
		
		if(rs.next()) {
			user=rs.getString("usuario");
			pass=rs.getString("clave");
			
		} else {
			response.sendRedirect("listadoUsuarios.jsp?mensaje=No%20existe%20el%usuario");
		}
		
	} catch (Exception e) {
		response.sendRedirect("listadoUsuarios.jsp?mensaje=Hubo%20un%20problema%contactesé%20con%20el%20desarrollador");
		
	}
	
	%>	  
  
  	<jsp:include page="menu.jsp" />
  	
	<div class="container">
    	<div class="border rounded m-2">
			<div class="text-center fs-3 my-4">Modificar Usuario</div>
			
			
			<div class="d-flex justify-content-center">
				<form action="../controller/updUsuario.jsp" method="post">
					<input type="hidden" name="id" value="<% out.print(id); %>">
					<input type="email" name="user" id="user" onkeyup="validarUsu()" value="<% out.print(user); %>" class="form-control mb-3" placeholder="usuario" required>
					<input type="text" name="pass" id="pass" onkeyup="showFort()" value="<% out.print(pass); %>" class="form-control mb-3" placeholder="contraseña" required>
					<input type="password" name="repPass" id="repPass" value="<% out.print(pass); %>" onkeyup="compararPass()" class="form-control mb-3" placeholder="reingrese contraseña" required>
					<input type="submit" value="Enviar" class="btn btn-primary mb-3">
				</form>
			</div>
			<div id="mensaje" ></div>
	    	<% 
	    		String mensaje=request.getParameter("mensaje");
	    		if(mensaje!=null){
	    			out.println("<div class='bg-danger text-center my-1 p-2'>");
	    			out.println(mensaje);	
	    			out.println("</div>");
	    		}
	    		
	    	%>				
    	</div>
		
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="js/registro.js" ></script>
  </body>
</html>
	