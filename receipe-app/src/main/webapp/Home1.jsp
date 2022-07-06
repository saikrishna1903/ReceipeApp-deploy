<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ page import="java.util.*" %>
<%! int fontSize; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recipe Page</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
button:hover {
  background: #ccc;
}



tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}

th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
h1{
   text-align: center;
}
h3{
text-align: right;
}
p{
text-align: center;
}
</style>
</head>
<body>
<h3><a href="/add">Add Recipe</a> | <a href="/">Log Out</a></h3>
<h1>Recipe Management Interface</h1>
<form action="/home">
<input type="text" placeholder="Search.." name="search">
<button type="submit" >search</button>
</form>
<br>
<table style="width:100%">
<tr style="height:70px"><th>Id</th><th>Name</th><th>Date and time of its Creation</th><th>Type of Dish</th><th>Serves For </th><th>Ingredients</th><th>CookingInstructions</th></tr>
<c:if test="${P.size()!=0 }">
<c:forEach items="${P}" var="item">
<tr style="height:70px">
<c:set var="count" value="0" scope="page" />
<c:forEach items="${item.getList()}" var="valuee">
<c:set var="count" value="${count + 1}" scope="page"/>
<c:if test = "${count!=6 }">
<th>${valuee}</th></c:if>
<c:if test = "${count==6 }">
 <th>
               <ol>
         <c:forEach items="${item.getvaluess(valuee)}" var="ts">
         <li>${ts}</li>
         </c:forEach>
         
         </ol></th>
         </c:if>
     
</c:forEach>
<c:if test="${z==true}">
<th><button onclick="location.href='/delete/${item.getId()}'">Delete</button></th>
<th><button onclick="location.href='/se/${item.getId()}'">Update</button></th>

</c:if>
<c:if test="${z==false}">
<th><button title="No Admin Rights" disabled>Delete</button></th>
<th><button title="No Admin Rights" disabled>Update</button></th>
</c:if>
</tr>
</c:forEach>
</c:if>

</table>
<c:if test="${P.size()==0 }">
<p>The Receipe with the name "${F}" is Not Available</p>

</c:if>
  
</body>
</html>