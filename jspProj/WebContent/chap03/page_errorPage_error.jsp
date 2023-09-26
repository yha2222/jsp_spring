<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title>서비스 문제 발생</title>
</head>
<body>
	<img src="/images/오류.png" />
	<%
		// isErrorPage 속성의 값이 true일 때-exception 객체 사용 가능
		// 개발자 디버깅용 => 고객에게 서비스 시 삭제
		//exception.printStackTrace(new PrintWriter(out)); 
	%>
	<hr />
	<!-- 오류 타입 -->
	<%=exception.getClass().getName()%>
	<hr />
	<!-- 오류 메시지 -->
	<%=exception.getMessage() %>
</body>
</html>