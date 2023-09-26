<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="page_errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>오류 처리</title>
</head>
<body>
<!-- 
String 타입의 배열 strArr을 선언하고
값으로 "떡볶이", "순대", "오뎅탕"을 할당하자
 -->
 <%
 	String[] strArr = {"떡볶이", "순대", "오뎅탕"};
 
 	// java.lang.ArrayIndexOutOfBoundsException: 3 at
	for(int i = 0; i <= strArr.length; i++){
		out.print(strArr[i]);
	}
 %>
</body>
</html>