<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="css/homestyle.css">
  <title>e-School</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>e-School</h1>
  <p>Learn, Discover, Heal, Create and Make the World Ever Better...</p> 
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">TSDI College</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="newhome.jsp">Home</a></li>
        <li><a href="#">Contact Us</a></li>
        <li><a href="#">About Us</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      
      <h3>Login As</h3>
      <br>
      <ul class="nav nav-pills nav-stacked">
        <!--new added-->
        <li class="active" ><a href="newlogin.jsp">Admin</a></li>

        <li><a href="#">Teacher</a></li>
        <li><a href="#">Student</a></li>
        <li><a href="#">Accountant</a></li>

      </ul>
      <hr class="hidden-sm hidden-md hidden-lg">
    </div>
   

    <div class="col-sm-8">
      <h2>Bright Your Future...</h2>

      <img src="Images/1.jpg" alt="Distanse Learnin" style="width:500px">
      
      
    </div>
  </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0;">
  <p>Footer</p>
</div>

</body>
</body>
</html>