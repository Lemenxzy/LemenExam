package com.bufoon.util;


import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTool {

	/**
	 * 1. ��ȡ���ӵķ���. ͨ���ȡ�����ļ�����ݿ��������ȡһ������.
	 * 
	 * @return
	 * @throws Exception
	 */
	public static Connection getConnection() throws Exception {
		// 1. ׼��������ݿ�� 4 ���ַ�.
		// 1). ���� Properties ����
		Properties properties = new Properties();

		// 2). ��ȡ jdbc.properties ��Ӧ��������
		InputStream in = JDBCTool.class.getClassLoader().getResourceAsStream(
				"jdbc.properties");

		// 3). ���� 2�� ��Ӧ��������
		properties.load(in);

		// 4). ������� user, password ��4 ���ַ�.
		String driver = properties.getProperty("driver");
		String url = properties.getProperty("url");
		String user = properties.getProperty("username");
		String password = properties.getProperty("password");

		// 2. ������ݿ������(��Ӧ�� Driver ʵ��������ע����ľ�̬�����.)
		Class.forName(driver);

		// 3. ͨ�� DriverManager �� getConnection() ������ȡ��ݿ�����.
		return DriverManager.getConnection(url, user, password);
	}

	/**
	 * �ر� Statement �� Connection
	 * 
	 * @param statement
	 * @param connection
	 */
	public static void release(Statement statement, Connection connection) {
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static void release(ResultSet rs, Statement statement,
			Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (statement != null) {
			try {
				statement.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}
