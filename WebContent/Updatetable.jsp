<%-- 
    Document   : up
    Created on : May 16, 2019, 8:25:02 PM
    Author     : Suppa(Maaraya)
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "parent";
String userid = "root";
String password = "sliit@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
    <head>
<meta charset="ISO-8859-1">
<title>Parent | School Managment System</title>

<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
	  <link rel="stylesheet" href="style.css">
	  
	  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="home.css">
<link rel="stylesheet" href="header.css">
<link rel="stylesheet" href="parent.css">


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="footer, address, phone, icons" />
<link rel="stylesheet" href="footer.css">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
	  
</head>
<body>
    
     <div class="top">
      <div class="logo"><img src="images/logo.png" width= 296px height=300px></div>
      <div class="name"><h1>Hogwarts</h1></div>
	  </div>
	  
	  <ul>
    <li><a href="home.html">Home</a></li>
    <li><a href="news">News</a></li>
    <li><a href="contact">Contact</a></li>

  </ul>
  <br>
    
<h2>Retrieve data from database</h2>
<table border="1">
<tr>
<td>id</td>
<td>Name</td>
<td>Email</td>
<td>Contact</td>
<td>Occupation</td>
<td>update</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from details";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("occupation") %></td>
<td><a href="update.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<div class="botom">
  <footer class="footer-distributed">

    <div class="footer-left">

      <h3>Hog<span>warts</span></h3>

      <p class="footer-company-name">Hogwarts &copy; 2019</p>
    </div>

    <div class="footer-center">



      <div>
        <i class="fa fa-phone"></i>
        <p>+1 555 123456</p>
      </div>

      <div>
        <i class="fa fa-envelope"></i>
        <p><a href="mailto:hogwarts@wizards.com">hogwarts@wizards.com</a></p>
      </div>
      <div>
          <i class="fa fa-map-marker"></i>
          <p><span>21 Revolution Street</span> Paris, France</p>
        </div>

    </div>

    <div class="footer-right">

      <p class="footer-company-about">
        <span>About Us</span>
        This is the only Wizard School in the world. We caar your little wizard's future.
      </p>

      <div class="footer-icons">

        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-github"></i></a>

      </div>

    </div>
  </div>
  </footer>
  

</body>
</html>

