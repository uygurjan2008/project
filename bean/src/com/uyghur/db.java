package com.uyghur;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class db
 */
@WebServlet("/db")
public class db extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String name;
    private String tel;
    private String pass;
	
	
    public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

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

	/**
     * @see HttpServlet#HttpServlet()
     */
    public db() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String userpass=request.getParameter("userpass");
		String user="root";
		String pass="root";
		
		String Driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://127.0.0.1:3306/test";

		try {
			Class.forName(Driver);

			String sql = "select * from user where name='"+username+"' and pass='"+userpass+"'";
			Connection conn = DriverManager.getConnection(url, user,
					user);

			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				System.out.println(sql);
				name=rs.getString("name");
				pass=rs.getString("pass");
				
				
				response.sendRedirect("session.jsp");
					
			 
			}
			
			
		} catch (Exception e) {
			
			
			
		}
		
		

		
		
		
		
		
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
