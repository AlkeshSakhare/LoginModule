<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tutorial</title>
</head>
<body>

	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //http 1.1v
	response.setHeader("Pragma", "no-cache"); // http 1.0v
	response.setHeader("Expires", "0"); // proxy server
		if (session.getAttribute("uname") == null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
<pre>
Welcome ${uname}                                             <form action="logout" method="post">
                                                             <input type="submit" value="Logout">
                                                             </form>
<br>

</pre>
<a href="home.jsp">Home</a>

</body>
</html>