<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 30%;
}

h1{
font-weight: bold;
font-family: Monaco;
text-align: center;
}

h2{
font-family:Arial;
text-align: center;

}

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 20%;
}

input[type=submit] {
  background-color: #800000;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #ff4d4d;
}

</style>
 </head>
 
<body>

<img alt="clip" src="Images/3.png" class="center">

<h1>SORRY!</h1>
<h2>Your Operation is Unsuccessful</h2><br>


<div class="center">
<a href ="SearchUser.jsp">
	 <input type="submit" name="submit" class="btn btn-primary" value="Try Again">
	</a>
	</div>
</body>
</html>