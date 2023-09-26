<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>

<%
	String nm = "문익점";
	nm = URLEncoder.encode(nm);
%>

<%@ include file="header02.jsp" %>

<p>환영합니다.</p>

<jsp:include page="footer02.jsp">
	<jsp:param name="nm" value="<%=nm %>" />
</jsp:include>

</body>
</html>