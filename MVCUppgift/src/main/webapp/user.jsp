<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Bean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
</head>
<body>


	<%
	//check if there is a session 
	if (session.getAttribute("mySession") == null) {
		//not the samething
		//response.sendRedirect("SessionRemoveServlet");

		out.print("<h1>error</h1>");
		//	RequestDispatcher rd = request.getRequestDispatcher("SessionRemoveServlet");
		//	rd.forward(request, response);
	} else {
		// if there is a session , then all is well  

		out.print("<h1>Welcome You are in a session</h1>");

		String contentSession = (String) session.getAttribute("mySession");
		//out.print(contentSession);
		
		
		Bean bean = (Bean) request.getAttribute("snack");
		
		if(request.getAttribute("snack") == null){
			
			String succ = (String) request.getAttribute("name");
			
			out.print("<h1> Du är nu inloggad  "+succ+"Välkommen </h1>");
			
		}else {
		    request.getAttribute("snack");
			
			bean.getFavoriteSnack();
			out.print("<p>Your favorite snack is " + bean.getFavoriteSnack() + ".</p>");
			
		}
		
		
		

	}
	%>
	<form action="<%=request.getContextPath()%>/ExtraServlet" method="get">

			Favorite snack:<input type="text" name="snack" /> <input
				type="submit" value="send" />
		</form>
		<p>press this button to remove the session:</p>
		<form action="<%=request.getContextPath()%>/SessionRemoveServlet"
			method="post">
			<input type="submit" value="remove the session" />
		</form>
</body>
</html>