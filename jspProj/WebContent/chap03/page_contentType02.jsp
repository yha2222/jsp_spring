<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="page_errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>오류 처리</title>
</head>
<body>
<!-- 스크립틀릿 -->
<%
	int x = 10;
	int y = 0;
	int result = x / y;
	// java.lang.ArithmeticException: / by zero
	out.print("result: " + result);
%>
</body>
</html>