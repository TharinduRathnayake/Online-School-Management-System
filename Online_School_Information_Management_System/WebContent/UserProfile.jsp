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
   <link rel="stylesheet" type="text/css" href="css/userprofilestyle.css">   

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

  <h1>User Profile</h1>
  
</div>
	
	
	
	
	
	<table  class="center">
	<c:forEach var="us" items ="${usDetails}">
	
	<c:set var ="userId" value="${us.userId}"/>
	<c:set var ="name" value="${us.name}"/>
	<c:set var ="nic" value="${us.nic}"/>
	<c:set var ="email" value="${us.email}"/>
	<c:set var ="phone" value="${us.phone}"/>
	<c:set var ="gender" value="${us.gender}"/>
	<c:set var ="userCategory" value="${us.userCategory}"/>
	<c:set var ="password" value="${us.password}"/>
	
	<tr>
		<td>User ID : </td>
		<td> ${us.userId}</td>
	</tr>
	
	<tr>
		<td>User Name : </td>
		<td> ${us.name}</td>
	</tr>
	
	<tr>
		<td>User NIC : </td>
		<td> ${us.nic}</td>
	</tr>
	
		<tr>
		<td>User Email : </td>
		<td> ${us.email}</td>
	</tr>
	
	<tr>
		<td>User P.Number : </td>
		<td> ${us.phone}</td>
	</tr>
	
	<tr>
		<td>User Gender : </td>
		<td> ${us.gender}</td>
	</tr>
	
	<tr>
		<td>User Category : </td>
		<td> ${us.userCategory}</td>
	</tr>
	
	<tr>
		<td>Password : </td>
		<td> ${us.password}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	
	<!-- For send the values which assign the usDetails to UpdateUser.jsp -->
	<c:url value="UpdateUser.jsp" var="usupdate">
	
	<c:param name ="userId" value="${userId}"/>
	<c:param name ="name" value="${name}"/>
	<c:param name ="nic" value="${nic}"/>
	<c:param name ="email" value="${email}"/>
	<c:param name ="phone" value="${phone}"/>
	<c:param name ="gender" value="${gender}"/>
	<c:param name ="userCategory" value="${userCategory}"/>
	<c:param name ="password" value="${password}"/>
	</c:url>
	<br>
	<br>
	<table class="center">
	<tr>
		<td>
			<a href = "${usupdate}">
			<input  type="button" name="update" value="update user data">	
			</a>
		</td>
	</tr>
	</table>
	
	
	
	
	<!-- ...................Delete....................... -->
	<c:url value="DeleteUser.jsp" var="usdelete">
		<c:param name="userId" value="${userId}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="userCategory" value="${userCategory}"/>
		<c:param name="password" value="${password}"/>
	
	
	</c:url>
	<br>

	
	<table class="center">
	<tr>
		<td>
			<a href="${usdelete}">
			<input  type="button" name="delete" value="delete user data">
			</a>
		</td>
	</tr>
	</table>
	<br>
	
	
		<table class="center">
	<tr>
		<td>
			<a href="AdminDashboard.jsp">
			<input  type="button" name="back" value="Back to AdminDashboard">
			</a>
		</td>
	</tr>
	</table>
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