package com.uiui.test.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {
	
	static int test() {
		int i = 1;
		try {
			return i;
		} finally {
			++i;
			System.out.println("finally i:"+i);
			return i;
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		try {
			// 加载MySql的驱动类
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1/powersys", "root", "sshdb");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO users(account, password, addDate) values('jingt', '123456', CURRENT_DATE)");
			System.out.println("test end.");
		} catch (ClassNotFoundException e) {
			System.out.println("找不到驱动程序类 ，加载驱动失败！");
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
