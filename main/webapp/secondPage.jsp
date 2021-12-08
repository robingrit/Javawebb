<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Style.css">
<jsp:include page="Header.jsp" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>2page</h1>

<% String fname = request.getParameter("fname"); %>
<p>Testing </p>

<% 
out.println(fname); 
if(request.getParameter("stuff").equals("1")){
	response.sendRedirect("Danmark.jsp");
	out.print("I Danmark Bor"); out.print(fname);
}else if(request.getParameter("stuff").equals("2")){
	response.sendRedirect("Grekland.jsp");
	out.print("I Grekland Bor "); out.print(fname);
}else if(request.getParameter("stuff").equals("3")){
	response.sendRedirect("Finland.jsp");
	out.print("I Danmark Bor"); out.print(fname);
}else{
	response.sendRedirect("Sweden.jsp");
	out.println("I Svergie "); out.print(fname);
	
	
}
%>

<jsp:include page="Footer.jsp" />  
</body>
</html>