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
    <form>
        <input class="search" type="text" placeholder="Type...">
        <input class="submitSearch" type="submit" value="Search">
    </form>
    <a class="logout" href="logout.jsp"><button>LogOut</button></a>
    <a class="cta" href="Contact.jsp"><button>Contact</button></a>
    <a class="fa fa-shopping-bag" href="userOrder.jsp" style="font-size:20px"></a>
<%--    <%--%>
<%--		//HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE--%>
<%--				String uid = (String)session.getAttribute("user");--%>
<%--                int userID = (int) session.getAttribute("id");--%>
<%--				if (uid == null)--%>
<%--				{--%>
<%--		%><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->--%>
<%--    <jsp:forward page="index.jsp"/>--%>
<%--    <%--%>
<%--    }--%>
<%--    else--%>
<%--    {//IF THE VALUE IN SESSION IS NOT NULL THEN THE IS USER IS VALID--%>
<%--        out.println(" <h1>You have successfully created the Session of User : " +uid+ " " + userID+"</h1>");--%>
<%--    %>--%>
<%--    <!-- WE HAVE GIVEN LOGOUT.JSP FILE INORDER TO LOGOUT THE SESSION -->--%>
<%--    <a href="logout.jsp">Logout</a>--%>
<%--    <%}--%>
<%--    %>--%>
</header>
<h1 class="welcomeText">Welcome to SH. shop,your home for your comfort</h1>
</body>
</html>
