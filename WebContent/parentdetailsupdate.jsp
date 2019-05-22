<%-- 
    Document   : parentdetails
    Created on : May 16, 2019, 2:41:29 PM
    Author     : Suppa(Maaraya)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details Update | School Managment System</title>

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
  <br><br><br>
        
       <form method="post" action="http://localhost:8080/Suppa/AddDetails">
Name:<br>
<input type="text" name="name">
<br>
Email:<br>
<input type="email" name="email">
<br>
Contact:<br>
<input type="text" name="contact">
<br>
Occupation:<br>
<input type="text" name="occupation">
<br><br>
<input type="submit" value="submit">
</form>
    </body>
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
    

