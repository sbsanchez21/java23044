<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	//todo: validar en el backend user y pass
	
	ConexionDB conexion=new ConexionDB();
	Statement st=conexion.conectar();
	Integer okInsert=st.executeUpdate("INSERT INTO usuarios (usuario,clave) VALUES ('"+user+"','"+pass+"') ");
	
	if(okInsert.equals(1)) {
		response.sendRedirect("../view/inicio.jsp?mensaje=Usuario%20agregado%20correctamente");
	} else {
		response.sendRedirect("../view/error.jsp");
	}
%>