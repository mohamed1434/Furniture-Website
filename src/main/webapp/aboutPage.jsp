<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="menuBarStyle.css">
<!DOCTYPE html>
<html>
<head>
    <title>About</title>
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
<div>
<h1 class="aboutHeader">About us</h1>
    <h2 class="descriptionHeader">This is my first website which is a furniture website that allows people to order products for their homes</h2>
</div>
</body>
</html>
