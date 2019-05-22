<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<%


          ResultSet resultSet = null;

          String id = request.getParameter("id");
                
          Class.forName("com.mysql.jdbc.Driver");
          Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parent?useSSL=false","root","sliit@123");
          
          Statement statement = connection.createStatement();
          String sql = "SELECT * FROM details WHERE id=" +id;

          resultSet = statement.executeQuery(sql);
          if(resultSet.next()) {
         %>
        

        <form  method="post" action="http://localhost:8080/Suppa/UpdateDetails">
            <fieldset>
            <legend style="color: darkblue">Update Details</legend>
            <table>
            	<tr>
                    <td colspan="2">
                        <h4>ID   <input type="int" name="ID" placeholder="ID" value="<%=resultSet.getInt("ID") %>" style="width:85%" required></h4>
                    </td>
                </tr>
                <tr>
                    <td width="50%">
                        <h4> Name <input type="text" name="name" placeholder="name" value="<%=resultSet.getString("name") %>"  required></h4>
                    </td>
                    <td width="50%">
                        <h4> Email <input type="email" name="email"placeholder="email" value="<%=resultSet.getString("email")%>" required></h4>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h4> Contact   <input type="int" name="contact" placeholder="contact" value="<%=resultSet.getString("contact") %>" style="width:85%" required></h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4> Occupation <input type="text" name="occupation" placeholder="occupation" value="<%=resultSet.getString("occupation") %>" required></h4>
                    </td>
                 </tr>
            </table>
            <button class="guest-submit" type="submit">Update details</button>
        </fieldset>
        </form>
        <% } %>
</body>
</html>