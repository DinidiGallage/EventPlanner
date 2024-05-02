<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client Insert</title>
<style>
  body {
    background-color: #2A004F; 
    color: #FFFFFF; 
    font-family: Arial, sans-serif;
    text-align: center;
    margin: 0;
    padding: 0;
  }

  form {
    background-color: rgba(0, 0, 0, 0.6); 
    padding: 30px; 
    border-radius: 10px;
    margin: 20px auto;
    max-width: 400px; 
  }

  h1 {
    color: #FFFFFF; 
  }

  label {
    color: #FFFFFF; 
  }

  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 15px; 
    margin: 10px 0;
    background-color: #3E0067; 
    border: none;
    color: #FFFFFF; 
    border-radius: 5px;
    font-size: 16px; /
  }

  input[type="submit"] {
    background-color: #6D39A0; 
    color: #FFFFFF; 
    padding: 15px 20px; 
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px; 
  }

  input[type="submit"]:hover {
    background-color: #54267D; 
  }
</style>
</head>
<body>

  <form action="insert" method="post">
    <h1>Create Client Account</h1>

    <label for="name">Name:</label>
    <input type="text" name="name" required>

    <label for="email">Email:</label>
    <input type="text" name="email" required>

    <label for="phone">Phone Number:</label>
    <input type="text" name="phone" required>

    <label for="uid">User Name:</label>
    <input type="text" name="uid" required>

    <label for="psw">Password:</label>
    <input type="password" name="psw" required>

    <input type="submit" name="submit" value="Create Account">
  </form>

</body>
</html>




    