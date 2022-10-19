<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="adminDashboardnewstyle.css">
<link rel="stylesheet" type="text/css" href="css/adminDashboardnewstyle.css">


<!--End of Bootstrap -->
<style>
table.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
</head>
<body>
<!-------------------Navigation Bar------------------>

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
        <li class="active"><a href="#">Home</a></li>
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
<!----------------End of Navigation Bar-------------->

<div class="jumbotron text-center">
  <h1>User Account Delete</h1>
  
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
	   
	  
	   
		<form  action="delete" method="post" >
		<table class="center">
			<tr>
				<td>User Name</td>
				<td><input type="text" name="name" value="<%= name%>" readonly></td>
			</tr>
			
			<tr>
				<td>NIC</td>
				<td><input type="text" name="nic" value="<%= nic%>" readonly></td>
			</tr>
			
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%= email%>" readonly></td>
			</tr>
			
			<tr>
				<td>Contact Number</td>
				<td><input type="text" name="phone" value="<%= phone%>" readonly></td>
			</tr>
			
			<tr>
				<td>Gender</td>
				<td><input type="text" name="gender" value="<%= gender%>" readonly></td>
			</tr>
			
			<tr>
				<td>User Category</td>
				<td><input type="text" name="uCategory" value="<%= userCategory%>" readonly></td>
			</tr>
			
			<tr>
				<td>User ID</td>
				<td><input type="text" name="uid" value="<%= userId%>" readonly></td>
			</tr>
			
			
			
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="Delete User Account"> </td>
			</tr>
			
</table>
</form>


<br><br><br>
<table class="center">
	<tr>
		<td>
			<a href="AdminDashboard.jsp">
			<input  type="button" name="back" value="Back to AdminDashboard">
			</a>
		</td>
	</tr>
	</table>
<br><br><br>
<div>
<footer class="container-fluid text-center">
  <p></p>
</footer>
</div>
</body>
</html>