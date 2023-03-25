<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="menuBarStyle.css">
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
<header class="headerC">
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
<div class="registerContainer">
    <form action="register_redirect.jsp">
        <div><span>First Name</span></div>
        <br>
        <div><input class="first" type="text" placeholder="Enter first name" name="firstName"></div>
        <br>
        <div><span>Last Name</span></div>
        <br>
        <div><input class="last" type="text" placeholder="Enter last name" name="lastName"></div>
        <br>
        <div><span>E-mail</span></div>
        <br>
        <div><input class="emlReg" type="email" placeholder="Enter Email" name="emailReg"></div>
        <br>
        <div><span>Login</span></div>
        <br>
        <div><input class="userNameReg" type="text" placeholder="Enter userName" name="userReg"></div>
        <br>
        <div><span>Password</span></div>
        <br>
        <div><input class="pssReg" type="password" placeholder="Enter Password" name="passReg"></div>
        <br>
        <div><span>Confirm password</span></div>
        <br>
        <div><input class="cnfrmPass" type="password" placeholder="Confirm Password" name="confirmPass"></div>
        <br>
        <div><input class="signUp" type="submit" value="Sign-Up"></div>
    </form>
</div>
</body>
</html>
