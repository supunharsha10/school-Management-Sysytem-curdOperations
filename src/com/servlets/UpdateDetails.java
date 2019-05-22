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

/**
 * Servlet implementation class UpdateDetails
 */
@WebServlet("/UpdateDetails")
public class UpdateDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {


		
            
	        int ID = Integer.parseInt(req.getParameter("ID"));
	        String name = req.getParameter("name");
	        String email= req.getParameter("email");
	        String contact = req.getParameter("contact");
	        String occupation = req.getParameter("occupation");
	       
	        try {
				Class.forName("com.mysql.jdbc.Driver");
	            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parent?useSSL=false","root","sliit@123");
	            
	            Statement statement = connection.createStatement();
	            String sql = ("UPDATE guest_list SET name='"+name+"', email='"+email+"', contact='"+contact+"', occupation='"+occupation+"'" ); 
	           
	            connection.close();
			}catch(ClassNotFoundException e) {
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	        response.sendRedirect("view.jsp");
	}

}
