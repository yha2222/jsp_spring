<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("memId");
	String pw = request.getParameter("password");
	String rm = request.getParameter("remember-me");
%>

	<p>memId : <%=id %></p>
	<p>password : <%=pw %></p>
	<p>rememberMe : <%=rm %></p>
</body>
</html>