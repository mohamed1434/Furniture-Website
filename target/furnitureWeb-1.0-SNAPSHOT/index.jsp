<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="menuBarStyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
<head>
    <title>Main Menu</title>
</head>
<body class="mainBody">
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
    <a class="fa fa-shopping-bag" href="userOrder.jsp" style="font-size:20px"></a>
    
</header>
<h1 class="welcomeText">Welcome to SH. shop,your home for your comfort</h1>
</body>
</html>