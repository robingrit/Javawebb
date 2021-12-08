<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Header.jsp" />  
<form action="secondPage.jsp" >
  Name: <input type="text" name="fname" metod="post">
  


	<select name="stuff" >
	  <option value="1">Danmark</option>
	  <option value="2">Grekland</option>
	  <option value="3">Finland</option>
	  <option value="4">Sweden</option>
	</select>






<input type="submit" value="Submit">



</form>
<h1>Test</h1>
<jsp:include page="Footer.jsp" />  
</body>
</html>