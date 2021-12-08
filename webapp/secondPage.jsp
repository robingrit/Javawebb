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
<p></p>
<% String fname = request.getParameter("fname"); %>


<% 
out.println(fname); 
if(request.getParameter("stuff").equals("1")){
	response.sendRedirect("Danmark.jsp");
	
}else if(request.getParameter("stuff").equals("2")){
	response.sendRedirect("Grekland.jsp");
	
}else if(request.getParameter("stuff").equals("3")){
	response.sendRedirect("Finland.jsp");
	
}else{
	response.sendRedirect("Sweden.jsp");
	
	
	
}
%>

<jsp:include page="Footer.jsp" />  
</body>
</html>