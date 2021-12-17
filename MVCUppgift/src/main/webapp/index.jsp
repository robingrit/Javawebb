<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
// check if there is a session 
if (session.getAttribute("mySession") != null) {
	//not the samething
	//response.sendRedirect("SessionServlet");
	
	RequestDispatcher rd = request.getRequestDispatcher("SessionServlet");
	rd.forward(request, response);// this lands on the GET in the servlet
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/SessionServlet" method="post">
  <div class="imgcontainer">
    <img src="https://baconmockup.com/300/200" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit">Login</button>
    
  </div>
  </form>

</body>
</html>