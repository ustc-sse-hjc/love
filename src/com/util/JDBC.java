package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBC {
	private static Connection conn;

	public static Connection getConnection() {
		try {
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			//System.out.println("database ready");
		} catch (Exception e) {
			//System.out.println("不好的");
		}
		try {
			conn = DriverManager.getConnection(
					"jdbc:db2://192.168.78.26:50000/zhangli", "ladyzhang", "123");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

		}
		return conn;
	}

	public static void main(String[] args) {
		JDBC j = new JDBC();
		j.getConnection();
	}
}
