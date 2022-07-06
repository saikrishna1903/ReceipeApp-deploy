<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
button{
margin-left: auto;
  margin-right: auto;
  text-align: center;
}
</style>
</head>
<body>
<h1 align="center">Login</h1>
<form action="page">
<img src="https://img.freepik.com/free-vector/chef-mascot-cartoon-illustration_27088-397.jpg?w=2000" width="250" height="250" alt="alternatetext">
<table align="center">
<tr><th>Username:</th><th><input type=text name="username" placeholder="Username" required></th></tr>
<tr><th>Password:</th><th><input type=password name="password" placeholder="Password" required></th></tr>
<tr><th><button type=submit >Login</button></th></tr>
</table>

</form>


</body>
</html>