<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code wall</title>
<link type = "text/css" rel="stylesheet" href="./css/style.css">
</head>
<body>
	<nav>
	<img class = "logo" src = "./assets/code-wall-logo.jpg" alt = "logo"/>
	<ul>
	<li><a href="${pageContext.request.contextPath}/Login">Login</a></li>
	<li><a href="${pageContext.request.contextPath}/Signup">Sign up</a></li>
	</ul>
	</nav>
	<div class="welcome-back">WELCOME BACK</div>
	<div class="sub-text">Share something new that you have learnt with the code wall community</div>
	<div class = "login-form">
		<div class ="title">Login</div>
		<form action= "${pageContext.request.contextPath}/Login" method="post">
			<label class = "label" for = "email">Email</label>
			<input type = "text" name = "email" id = "email">
			<label class = "label" for = "password">Password</label>
			<input type = "password" name = "password" id = "password">
			<button class = "button" type = "submit">Login</button>
			<a class = "forgot-password" href ="">Forgot password</a>
		</form>
	</div>
</body>
</html>