package br.com.mardelli.Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectFactory {
	private static final String driverName = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/ecomerce_p2_web?serverTimezone=UTC";
	private static final String USER = "root";
	private static final String PASSWORD = "123456";
		
	
	public static Connection getConction() {
		try {
			Class.forName(driverName);
			return DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException | SQLException e) {
			throw new RuntimeException("Erro de conexão", e);
		}
	}	

}
