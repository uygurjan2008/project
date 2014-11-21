package com.uyghur;

import java.sql.*;

public class dbutil {
	private String user;
	private String pass;
	private String name;
	private String tel;
	
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public dbutil(){
		
	}
	
	
	public dbutil(String user,String pass){
		
		String Driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://127.0.0.1:3306/test";

		try {
			Class.forName(Driver);

			String sql = "select * from user";
			Connection conn = DriverManager.getConnection(url, user,
					pass);

			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
	
				name=rs.getString("name");
				tel=rs.getString("tel");
				
					
			 
			}
			
			
		} catch (Exception e) {
			
			
			
		}
		
		
}
	
	
	
	
	
	
	
	
	
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
}
