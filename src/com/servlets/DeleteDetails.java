package com.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


@WebServlet("/DeleteDetails")
public class DeleteDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
if(request.getParameter("id") != null){
            
	        int id = Integer.parseInt(request.getParameter("id"));
	        
	        

	        try {
				Class.forName("com.mysql.jdbc.Driver");
	            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parent?useSSL=false","root","sliit@123");
	            
	            Statement statement = connection.createStatement();
	           
	            String sql = ("DELETE FROM guest_list WHERE id='"+id+"'");
	            connection.close();
	            JOptionPane.showMessageDialog(null, "Data Deleted Successfully !");
			}catch(ClassNotFoundException e) {
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	        response.sendRedirect("view.jsp");
		}
		
	}
	
	

}
