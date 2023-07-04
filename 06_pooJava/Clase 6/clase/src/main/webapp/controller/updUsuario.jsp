<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String id=request.getParameter("id");
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	//todo: validar en el backend user y pass
	try {
		ConexionDB conexion=new ConexionDB();
		Statement st=conexion.conectar();
		Integer okUpd=st.executeUpdate("UPDATE usuarios SET usuario='"+user+"', clave='"+pass+"' WHERE idusuario="+id);
		
		if(okUpd.equals(1)) {
			response.sendRedirect("../view/listadoUsuarios.jsp");
		} else {
			response.sendRedirect("../view/editUsuario.jsp?mensaje=Error%20al%20modificar%20usuario");
		}
		
	} catch (Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/editUsuario.jsp?mensaje=Error%20al%20modificar%20usuario");
	}
	
	
%>