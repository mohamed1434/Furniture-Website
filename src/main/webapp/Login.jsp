<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="menuBarStyle.css">
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
<header>
    <img class="logo" src="SH..png" alt="logo" width="100" height="100">
    <nav class="nav_links">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="aboutPage.jsp">About</a></li>
            <li><a href="products.jsp">Products</a></li>
        </ul>
    </nav>
    <form action="search_redirect.jsp">
        <input class="search" type="text" placeholder="Type...">
        <input class="submitSearch" type="submit" value="Search">
    </form>
    <a class="login" href="Login.jsp"><button>Login</button></a>
    <a class="register" href="Register.jsp"><button>Register</button></a>
    <a class="cta" href="Contact.jsp"><button>Contact</button></a>
</header>
<div class="loginContainer">
    <form action="login_redirect.jsp" method="post">
        <div><span class="emailSpan">E-mail</span></div>
        <br>
        <div><input class="emlLogin" type="text" placeholder="Enter username" name="userName"></div>
        <br>
        <div><span class="passSpan">Password</span></div>
        <br>
        <div><input class="pssLogin" type="password" placeholder="Enter Password" name="pass"></div>
        <div><input class="LoginSub" type="submit" value="Login"></div>
    </form>
</div>
</body>
</html>
