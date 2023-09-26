<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>taglib</title>
</head>
<body>
	<!-- 
		JSTL(JSP Standard Tag Library)
		JSP에서 자주 사용하는 구문들을 모아놓음
		var : 변수
		1에서 10까지 1씩 증가
	-->
	<c:forEach var="k" begin="1" end="10" step="1">
	<!-- EL(Expression Language)을 통해 변수 k값 출력 -->
		<c:out value="${k}"/>
	</c:forEach>
</body>
</html>