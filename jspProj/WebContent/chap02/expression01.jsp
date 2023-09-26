<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>표현문</title>
</head>
<body>
	<p>Today's date : <%=new java.util.Date() %></p>
	<!-- 패키지명 생략 가능 -->
	<p>today's date : <%=new Date() %></p>
	<p>
		<!-- 2023-09-22 -->
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dt = sdf.format(new Date());
	%>
	</p>
	<p><%=dt %></p>
</body>
</html>