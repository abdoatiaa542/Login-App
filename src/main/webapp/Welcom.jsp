<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Successful</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #2ecc71;
	color: #fff;
	margin: 0;
	padding: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	text-align: center;
}

h1 {
	font-size: 36px;
	margin-bottom: 20px;
}

p {
	font-size: 18px;
	margin-top: 0;
}

a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div>
		<h1>${catogery} Successfully!</h1>
		<p>Welcome to our platform.</p>
		<a href="My_Servlet">Logout</a>
	</div>


</body>
</html>
