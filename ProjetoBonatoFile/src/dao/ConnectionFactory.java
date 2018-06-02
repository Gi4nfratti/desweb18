package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	private static final ThreadLocal<Connection> conn = new ThreadLocal<>();
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
	
	public static Connection obtemConexao() throws SQLException {
		String servidor = "localhost";
		String porta = "3306";
		String database = "projetoolimpiada";
		String usuario = "root";
		String senha = "12345";
		return DriverManager.getConnection("jdbc:mysql://" + servidor + ":" + porta + "/"
				+ database + "?user=" + usuario + "&password=" + senha +"&useSSL=false");
		
	}
	public static void fecharConexao() throws SQLException {
		if(conn.get() != null){
			conn.get().close();
			conn.set(null);
		}
	}
}
