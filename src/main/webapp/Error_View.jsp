<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .error-container {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .error-message {
            color: #FF5722;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .go-back-button {
            background-color: #2196F3;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
        }

        .go-back-button:hover {
            background-color: #1565C0;
        }
    </style>
</head>
<body>

<div class="error-container">
		<h2 class="error-message">Error: Unable to ${type}</h2>
		<p>${message}</p>
    <a href="#" class="go-back-button" onclick="goBack()">Go Back</a>
</div>

<script>
    function goBack() {
        window.history.back();
    }
</script>

</body>
</html>