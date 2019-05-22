package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddDetails")
public class AddDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String occupation = request.getParameter("occupation");
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parent?useSSL=false","root","sliit@123");
            
            Statement statement = connection.createStatement();
            int executeUpdate = statement.executeUpdate("INSERT INTO details(name, email, contact, occupation) values('"+name+"','"+email+"','"+contact+"','"+occupation+"')"); 
            
            
            
            PrintWriter out = response.getWriter();
            out.println(name);
            connection.close();
		}catch(ClassNotFoundException e) {
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("view.jsp");
		PrintWriter out = response.getWriter();
        out.println(name+"has been successfully inserted");
		
	}

}
