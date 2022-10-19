package com.Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	
	public static List<Admin> validate(String adminId, String password){
		
		ArrayList<Admin> adm = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "password12A";
		
		
		//validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from admin where adminId = '"+adminId+"' and password = '"+password+"' ";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String userU= rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String passU = rs.getString(5);
				
				Admin a = new Admin(userU,name,email,phone,passU);
				adm.add(a);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return adm;
	}
}

