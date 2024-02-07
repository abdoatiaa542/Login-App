<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 400px;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #333;
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

input {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	background-color: #4caf50;
	color: #fff;
	padding: 12px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

button:hover {
	background-color: #45a049;
}

h4 {
	text-align: center;
	color: #666;
	margin-top: 20px;
}

a {
	color: #3498db;
	text-decoration: none;
	font-weight: bold;
}
</style>
</head>
<body>

	<div class="container">
		<h1>User Login</h1>

		<form action="My_Servlet" method="POST">
			<label for="username">Enter Name:</label> <input type="text"
				name="username" required> <label for="password">Enter
				Password:</label> <input type="password" name="password" required>

			<button type="submit">Login</button>
		</form>

		<h4>
			Don't have an account? <a href="Register_servlet">Register Now!</a>
		</h4>
	</div>

</body>
</html>
