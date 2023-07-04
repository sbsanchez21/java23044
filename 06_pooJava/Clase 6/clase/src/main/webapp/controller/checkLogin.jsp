<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	/* out.println(user);
	out.println(pass); */
	
	ConexionDB conexion=new ConexionDB();
	Statement st=conexion.conectar();
	ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE usuario='"+user+"' AND clave='"+pass+"' ");
	
	if(rs.next()) {
		response.sendRedirect("../view/inicio.jsp");
	} else {
		response.sendRedirect("../view/login.jsp?mensaje=Usuario%20o%20password%20incorrectas");
	}
%>