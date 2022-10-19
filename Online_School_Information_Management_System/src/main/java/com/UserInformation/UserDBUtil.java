package com.UserInformation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class UserDBUtil {
	
	//insert user
	public static boolean insertuser(String userId, String name, String nic, String email, String phone, String gender, String userCategory, String password) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "password12A";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			//String sql = "insert into user_information values ('"+name+"','"+nic+"', '"+email+"', '"+phone+"', '"+gender+"', '"+userCategory+"', '"+userId+"','"+password+"')";
			String sql = "insert into users values ('"+userId+"','"+name+"','"+nic+"', '"+email+"', '"+phone+"', '"+gender+"', '"+userCategory+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	} 
	
	//view 
    public static List<User> validate(String userId, String userCategory){
		
		ArrayList<User> us = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "password12A";
		
		
		//validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from users where userId = '"+userId+"' and userCategory = '"+userCategory+"' ";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				String userI = rs.getString(1);
				String name = rs.getString(2);
				String nic = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				String userC= rs.getString(7);
				String password = rs.getString(8);
				
				User u = new User(userI,name,nic,email,phone,gender,userC,password);
				us.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
    
    //update
    public static boolean updateuser(String userId, String name, String nic, String email, String phone, String gender, String userCategory, String password){
		
	    boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "password12A";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "update users set name='"+name+"', nic='"+nic+"', email='"+email+"', phone='"+phone+"', gender='"+gender+"', userCategory='"+userCategory+"', password='"+password+"'"
					+ "where userId='"+userId+"'";
					 
		    int rs = stmt.executeUpdate(sql);
		    
		    if(rs > 0) {
		    	isSuccess= true;
		    }
		    else {
		    	isSuccess= false;
		    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
		return isSuccess;
	}
  //.................................................  
    //Data Retrieve from user data base

	public static List<User> getUserDetails(String userId){
		
		
		ArrayList<User> us = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/project";
		String user = "root";
		String pass = "password12A";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from users where userId='"+userId+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String userI = rs.getString(1);
				String name = rs.getString(2);
				String nic = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				String userC= rs.getString(7);
				String password = rs.getString(8);
				
				User u = new User(userI,name,nic,email,phone,gender,userC,password);
				us.add(u);
				 
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
	
	
	//...................Delete data.............
	
	   public static boolean deleteUser(String userId){
			
		    boolean isSuccess = false;
			
			//create database connection
			String url = "jdbc:mysql://localhost:3306/project";
			String user = "root";
			String pass = "password12A";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url, user, pass);
				Statement stmt = con.createStatement();
				String sql = "delete from users where userId='"+userId+"'";
						
						 
			    int rs = stmt.executeUpdate(sql);
			    
			    if(rs > 0) {
			    	isSuccess= true;
			    }
			    else {
			    	isSuccess= false;
			    }
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
		
			return isSuccess;
		}
	
	
}