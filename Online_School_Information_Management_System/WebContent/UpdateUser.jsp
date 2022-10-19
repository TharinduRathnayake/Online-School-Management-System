<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- bootstrap part-->

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="css/updateuserstyle.css">   

<!-- end of bootstrap part-->

<style>
table.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
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
        
         
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="newhome.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<!------------------------------End of navigation Bar-------------------------------->	

<div class="jumbotron text-center">

  <h1>Update User Details</h1>
  
</div>


		<!-- catch the values from the UserProfile.jsp using java code -->	
		<%
		String userId = request.getParameter("userId");
	    String name = request.getParameter("name");
	    String nic = request.getParameter("nic");
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String gender = request.getParameter("gender");
	    String userCategory = request.getParameter("userCategory");
	    String password = request.getParameter("password");
	   %>
		

		<form  action="update" method="post">
		<table class="center">
			<tr>
				<td>User Name</td>
				<td><input type="text" name="name" value="<%= name%>"></td>
			</tr>
			
			<tr>
				<td>NIC</td>
				<td><input type="text" name="nic" value="<%= nic%>"></td>
			</tr>
			
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%= email%>"></td>
			</tr>
			
			<tr>
				<td>Contact Number</td>
				<td><input type="text" name="phone" value="<%= phone%>"></td>
			</tr>
			
			<tr>
				<td>Gender</td>
				<td><input type="text" name="gender" value="<%= gender%>"></td>
			</tr>
			
			<tr>
				<td>User Category</td>
				<td><input type="text" name="uCategory" value="<%= userCategory%>"></td>
			</tr>
			
			<tr>
				<td>User ID</td>
				<td><input type="text" name="uid" value="<%= userId%>" readonly></td>
			</tr>
			
			<tr>
				<td>Password</td>
				<td><input type="text" name="psw" value="<%= password%>"></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="Update User Information"> </td>
				
			</tr>
			
</table>
</form>
<!------------------------------Footer Bar-------------------------------->	
<br><br>
<div>
<footer class="container-fluid text-center">
  <p></p>
</footer>
</div>
<!------------------------------End of Footer Bar-------------------------------->	

</body>
</html>