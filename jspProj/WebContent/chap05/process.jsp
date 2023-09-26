<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>언니 어디갔어!!!!!!!!!!!!!!!!!!!!!!!!!</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name"); // 개똥이
	String id = request.getParameter("id");
%>
	<p><%=name %></p>
	<p><%=id %></p>
</body>
</html>