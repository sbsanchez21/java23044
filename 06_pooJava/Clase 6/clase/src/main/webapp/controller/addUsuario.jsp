<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	//todo: validar en el backend user y pass
	try {
		ConexionDB conexion=new ConexionDB();
		Statement st=conexion.conectar();
		Integer okInsert=st.executeUpdate("INSERT INTO usuarios (usuario,clave) VALUES ('"+user+"','"+pass+"') ");
		
		if(okInsert.equals(1)) {
			response.sendRedirect("../view/listadoUsuarios.jsp");
		} else {
			response.sendRedirect("../view/altaUsuario.jsp?mensaje=Error%20al%20agregar%20usuario");
		}
		
	} catch (Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/altaUsuario.jsp?mensaje=Error%20al%20agregar%20usuario");
	}
	
	
%>