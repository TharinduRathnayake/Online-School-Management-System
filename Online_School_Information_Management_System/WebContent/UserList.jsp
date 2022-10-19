<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "project";
String userId = "root";
String password = "password12A";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>


<table>

<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>User Name</b></td>
<td><b>NIC</b></td>
<td><b>Email</b></td>
<td><b>Contact Number</b></td>
<td><b>Gender</b></td>
<td><b>User Category</b></td>
<td><b>User ID</b></td>
<td><b>Password</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM users";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
	
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("nic") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("userCategory") %></td>
<td><%=resultSet.getString("userId") %></td>
<td><%=resultSet.getString("password") %></td>

 

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table>

