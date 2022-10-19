<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin login Here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="css/newloginstyle.css">
</head>
<body>

<h2>Admin Login Form</h2>

<form action="log" method="post">
  <div class="imgcontainer">
    <img src="Images/2.png" alt="Admin" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>User ID</b></label>
    <input type="text" placeholder="Enter AdminID" name="uid" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required>
        
    <button type="submit" name="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1"><a href="newhome.jsp">
    <button type="button" class="cancelbtn">Cancel</button></a>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

</body>
</html>