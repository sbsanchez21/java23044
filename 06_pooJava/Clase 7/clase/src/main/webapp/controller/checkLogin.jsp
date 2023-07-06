<%@page import="dao.UsuarioDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	try {
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		
		/* out.println(user);
		out.println(pass); */
		
		UsuarioDAO usuDao=new UsuarioDAO();
		Boolean usuValido=usuDao.validarUsuYPass(user, pass);
		
		if(usuValido) {
			response.sendRedirect("../view/inicio.jsp");
		} else {
			response.sendRedirect("../view/login.jsp?mensaje=Usuario%20o%20password%20incorrectas");
		}		
	} catch(Exception e) {
		response.sendRedirect("../view/login.jsp?mensaje=Usuario%20o%20password%20incorrectas");
	}
	

%>