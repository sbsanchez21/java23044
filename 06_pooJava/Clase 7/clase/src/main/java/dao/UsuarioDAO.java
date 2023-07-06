package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.ConexionDB;
import model.Usuario;

/**
 * Concentra todas las consultas, modificaiones, elminaciones sobre la
 * tabla Usuarios
 * 
 * @author Santos
 *
 */
public class UsuarioDAO {
	
	/**
	 * Se conecta a la db, consulta con sql todos los usuarios
	 * y devuelve una lista de objetos usuarios
	 * @throws SQLException 
	 */
	public List<Usuario> listarUsuarios() throws SQLException {
		
		ConexionDB con=new ConexionDB();
		//conecta a la db
		Statement st=con.conectar();
		//consutla sql todos los usuario
		ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
		
		List<Usuario> listUsu=new ArrayList<Usuario>();
		//recorre todos los usuarios y crea un obj usuario x cada uno
		while (rs.next()) {
			//crea un objeto usuario
			Usuario usu=new Usuario(rs.getInt("idusuario"), rs.getString("usuario"), rs.getString("clave"));
			
			//coloca cada uno de los obj usuario en una lista
			listUsu.add(usu);
		}
		
		return listUsu;
	}
	
	public Boolean validarUsuYPass(String user, String pass) throws SQLException {
		ConexionDB db=new ConexionDB();
		Statement st=db.conectar();
		
		ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE usuario='"+user+"' AND clave='"+pass+"' ");
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
		
	}

}
