<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeleteAccount</title>

<style>
  body {
    background-color: #2A004F; 
    color: #FFFFFF; 
    font-family: Arial, sans-serif;
    text-align: center;
    margin: 0;
    padding: 0;
  }

  h1 {
    color: #FFFFFF; 
  }

  form {
    background-color: rgba(0, 0, 0, 0.6); 
    padding: 20px;
    border-radius: 10px;
    margin: 20px auto;
    max-width: 400px; 
    box-shadow: 0 0 10px rgba(255, 105, 180, 0.7); 
  }

  table {
    width: 100%;
  }

  table, tr, td {
    border: 1px solid #9A4AED; 
  }

  label {
    color: #FFFFFF; 
  }

  input[type="text"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    background-color: #3E0067; 
    border: none;
    color: #FFFFFF; 
    border-radius: 5px;
    transition: background-color 0.3s, transform 0.3s; 
  }

  input[type="text"]:focus {
    background-color: #54267D; 
  }

  input[type="submit"] {
    background-color: #FF69B4; 
    color: #FFFFFF; 
    padding: 10px 20px; 
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s; 
  }

  input[type="submit"]:hover {
    background-color: #FF6EB4; 
    transform: scale(1.05); 
  }
</style>

</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	<h1>Delete My Account</h1>
	<form action="delete" method="post">
	<table>
		<tr>
			<td>Client ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>" readonly></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= username %>" readonly></td>
	</tr>	
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Account">
	</form>
	
	<script>
  const inputFields = document.querySelectorAll("input[type='text']");
  inputFields.forEach(input => {
    input.addEventListener("focus", () => {
      input.style.background = "#54267D"; 
    });
    input.addEventListener("blur", () => {
      input.style.background = "#3E0067"; 
    });
  });

  const submitButton = document.querySelector("input[type='submit']");
  submitButton.addEventListener("mouseenter", () => {
    submitButton.style.backgroundColor = "#FF6EB4"; 
  });
  submitButton.addEventListener("mouseleave", () => {
    submitButton.style.backgroundColor = "#FF69B4"; 
  });
</script>

</body>
</html>