<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL 구구단</title>
</head>
<body>

	<c:forEach var="dan" begin="2" end="9" step="1">
		<h3>${dan}단</h3>
		<c:forEach var="k" begin="1" end="9" step="1">
			<c:out value="${dan} * ${k} = ${dan * k}"></c:out><br/>
		</c:forEach>
	</c:forEach>

</body>
</html>