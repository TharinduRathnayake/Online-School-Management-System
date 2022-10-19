package com.Admin;

public class Admin {
	//attributes
	private String adminId;
	private String name;
	private String email;
	private String phone;
	private String password;
	
	//Methods
	public Admin(String adminId, String name, String email, String phone, String password) {
		this.adminId = adminId;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}

	public String getadminId() {
		return adminId;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	
	public String getPhone() {
		return phone;
	}


	public String getPassword() {
		return password;
	}

	
	
	
	

}
