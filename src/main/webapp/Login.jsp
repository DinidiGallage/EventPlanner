<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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

<h1>Login</h1>
<form action="login" method="post">
  <label for="uid">User Name:</label>
  <input type="text" name="uid" placeholder="Enter your username" required>
  <br>
  <label for="pass">Password:</label>
  <input type="password" name="pass" placeholder="Enter your password" required>
  <br>
  <input type="submit" name="submit" value="Login">
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
</script>

</body>
</html>
    