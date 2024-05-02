<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateAccount</title>

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

  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    background-color: #3E0067; 
    border: none;
    color: #FFFFFF; 
    border-radius: 5px;
    transition: background-color 0.3s, transform 0.3s; 
  }

  input[type="text"]:focus,
  input[type="password"]:focus {
    background-color: #54267D; 
  }

  input[type="submit"] {
    background-color: #54267D; 
    color: #FFFFFF; 
    padding: 10px 20px; 
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s; 
  }

  input[type="submit"]:hover {
    background-color: #6D39A0; 
    transform: scale(1.05); 
  }
</style>

</head>
<body>

<h1>Update My Account</h1>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<form action="update" method="post">
	<table>
		<tr>
			<td>Client ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= username %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>

<script>
  const inputFields = document.querySelectorAll("input[type='text'], input[type='password']");
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
    submitButton.style.backgroundColor = "#6D39A0"; 
  });
  submitButton.addEventListener("mouseleave", () => {
    submitButton.style.backgroundColor = "#54267D";
  });
</script>

</body>
</html>