<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">

	<title>ClientAccount</title>
	
	<style>
  body {
    background-color: #2A004F; 
    color: #FFFFFF; 
    font-family: Arial, sans-serif;
    text-align: center;
    margin: 0;
    padding: 0;
  }

  table {
    background-color: rgba(0, 0, 0, 0.6); 
    border-radius: 10px;
    margin: 20px auto;
    max-width: 90%; 
    padding: 20px;
    box-shadow: 0 0 10px rgba(255, 105, 180, 0.7); 
  }

  table, tr, td {
    border: 1px solid #9A4AED; 
  }

  td {
    padding: 10px;
  }

  a {
    text-decoration: none;
    transition: background-color 0.3s, transform 0.3s; 
  }

  a:hover {
    background-color: #6D39A0; 
    transform: scale(1.05); 
  }

  input[type="button"] {
    background-color: #54267D; 
    color: #FFFFFF; 
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
  }

  input[type="button"]:hover {
    background-color: #6D39A0; 
    transform: scale(1.05); 
  }
</style>

</head>
<body>
	
	<h1>My Account</h1>
	<table>
	<c:forEach var="client" items="${clientDetails}">
	
	<c:set var="id" value="${client.id}"/>
	<c:set var="name" value="${client.name}"/>
	<c:set var="email" value="${client.email}"/>
	<c:set var="phone" value="${client.phone}"/>
	<c:set var="username" value="${client.userName}"/>
	<c:set var="password" value="${client.password}"/>
	
	<tr>
		<td>Client ID</td>
		<td>${client.id}</td>
	</tr>
	<tr>
		<td>Client Name</td>
		<td>${client.name}</td>
	</tr>
	<tr>
		<td>Client Email</td>
		<td>${client.email}</td>
	</tr>
	<tr>
		<td>Client Phone</td>
		<td>${client.phone}</td>
	</tr>
	<tr>
		<td>Client User name</td>
		<td>${client.userName}</td>
	</tr>

	<tr>
		<td>Client Password</td>
		<td>${client.password}</td>
	</tr>	
	
	</c:forEach>
	</table>
	
	<c:url value="updateClient.jsp" var="clientUpdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>	
	
	<a href="${clientUpdate}">	
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br><br>
	<c:url value="deleteClient.jsp" var="clientDelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${clientDelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	
	<script>
  const buttons = document.querySelectorAll("input[type='button']");
  buttons.forEach(button => {
    button.addEventListener("mouseenter", () => {
      button.style.transform = "scale(1.05)";
    });
    button.addEventListener("mouseleave", () => {
      button.style.transform = "scale(1)";
    });
  });
</script>
	
</body>
</html>