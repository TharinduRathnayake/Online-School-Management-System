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
  width: 20%;
}

h1{
font-weight: bold;
font-family: "Times New Roman";
text-align: center;
}

h2{
font-family:Arial;
text-align: center;

}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

</style>
</head>

<body>
<img alt="clip" src="Images/4.gif" class="center">


<h2>Delete Successful !</h2><br>

<br><br>
<div class="center">
	<a href ="AdminDashboard.jsp">
	 <input type="submit" name="submit"  value="Back to Dashboard">
	</a>
</div>
</body>
</html>