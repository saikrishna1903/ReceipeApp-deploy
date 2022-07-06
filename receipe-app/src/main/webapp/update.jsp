<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update page</title>
<style>
input[type=text], input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
</style>
</head>
<body>

<form action="/update">

<table align="center">
<tr><th>Recipe Id:</th><th><input type=text name=id value="${r.getId()}" required></th></tr>

<tr><th>Name of the Recipe</th><th><input type=text name="name" value="${r.getName()}" required></th></tr>
<tr><th>Date and time of its Creation</th><th><input type=text name="DateTime" value="${r.getDateTime()}" required></th></tr>
<tr><th>Type of Dish</th><th><input type=text name="TypeOfDish" value="${r.getTypeOfDish()}" required></th></tr>
<tr><th>Serves For </th><th><input type=number name="SuitableFor" value="${r.getSuitableFor()}" required></th></tr>
<tr><th>Ingredients</th><th><input type=text name="Ingredients" value="${r.getIngredients()}" placeholder="use / after every Ingredients" required></th></tr>
<tr><th>CookingInstructions</th><th><input type=text name="CookingInstructions" value="${r.getCookingInstructions()}" required></th></tr>
<tr><th></th><th><button onclick="myFunction()">Update</button></th>

</table>
</form>
<h3><a href="/home">Home page</a></h3>

</body>
</html>