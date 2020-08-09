<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code Wall</title>
<link type = "text/css" rel="stylesheet" href="./css/style.css">
</head>
<body>
<nav>
	<img class = "logo" src = "./assets/code-wall-logo.jpg" alt="logo" />
    <ul>
    <li> <a href="${pageContext.request.contextPath}/Login">Login</a></li>
    <li> <a href="${pageContext.request.contextPath}/Signup">Sign Up</a></li>
    </ul>
    </nav>
    <div class="welcome-back">LEARN. CODE. REPEAT</div>
    <div class="sub-text">CODEWALL is a collaborative learning platform for tech enthuiasts. Developers across the world
        contribute /discuss about modern technology, web-development and all things coding.</div>
    //<img class="login-illustration" src="./assets/illustration on sign up page.svg" alt="signup">
    <div class="signup-form">
        <div class="title">SIGN UP</div>
        <form action="${pageContext.request.contextPath}/Signup" method="post">
            <label class="label" for="email">Email</label>
            <input type="text" name="email" id="email">
            <label class="label" for="password">Password</label>
            <input type="password" name="password" id="password">
            <div class="password-hint">Must consist of atleast 8 characters, a symbol, an upper and a lowercase letter
            </div>
            <label class="label" for="password">Confirm Password</label>
            <input type="password" name="confirmPassword" id="password">
            ${message}
            <button class="button" type="submit">Sign In</button>
        </form>
    </div>
</body>
</html>