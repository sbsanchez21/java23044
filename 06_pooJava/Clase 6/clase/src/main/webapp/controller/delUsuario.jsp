<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String idUser=request.getParameter("idUser");
	
	
	try {
		ConexionDB conexion=new ConexionDB();
		Statement st=conexion.conectar();
		Integer okDel=st.executeUpdate("DELETE FROM usuarios WHERE idusuario="+idUser);
		
		if(okDel.equals(1)) {
			response.sendRedirect("../view/listadoUsuarios.jsp");
		} else {
			response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=Error%20al%20eliminar%20usuario");
		}
		
	} catch (Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=Error%20al%20eliminar%20usuario");
	}
	
	
%>