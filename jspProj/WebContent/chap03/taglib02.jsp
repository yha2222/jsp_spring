<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL 구구단</title>
</head>
<body>

<%
	// 요청URL : /chap03/taglib03.jsp?dan=2
	// 파라미터 값은 String 타입!
	String dan = request.getParameter("dan");
 	// dan은 EL아니고 자바 변수 라서 ${dan }으론 못 읽음 => c:set으로 바꿔줌
%>
<c:set var="dan" value="<%=dan %>" />
<p> 단은? ${dan }</p>

</body>
</html>