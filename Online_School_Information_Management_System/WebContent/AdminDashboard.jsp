<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin_Dashboard</title>
<!-- bootstrap part-->
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="css/adminDashboardnewstyle.css">


<!-- end of bootstrap part-->
</head>
<body>
<!------------------------------navigation Bar-------------------------------->	
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
        
        <li><c:forEach var="adm" items ="${admDetails}"><a href="#">AdminID: ${adm.adminId}</a></c:forEach></li>
         <li><c:forEach var="adm" items ="${admDetails}"><a href="#">AdminName: ${adm.name}</a></c:forEach></li>      
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="newhome.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<!------------------------------End of navigation Bar-------------------------------->	



<div class="jumbotron text-center">

  <h1>ADMINISTRATOR</h1>
  
</div>
  <br><br><br><br>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      
      <div class="container">
      <a href="UserInsert.jsp">
  <button type="button" class="btn btn-success">Add a User</button>
  </a>
</div>
      
    </div>
    <div class="col-sm-4">    
      <div class="container">
      <a href="UserList.jsp">
  <button type="button" class="btn btn-success">List of Users Details</button>
  </a>
</div>
    </div>
    <div class="col-sm-4">
             
      <div class="container">
      <a href="SearchUser.jsp">
  <button type="button" class="btn btn-success">View User Profile</button>
  </a>
</div>
    </div>
  </div>
</div>

<!------------------------------Footer Bar-------------------------------->	
<br><br><br><br><br><br>
<div>
<footer class="container-fluid text-center">
  <p></p>
</footer>
</div>
<!------------------------------End of Footer Bar-------------------------------->	
</body>
</html>