<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>전역변수</title>
</head>
<body>
<%!
	// 전역변수
	int count1 = 0;

	// 전역 메소드
	int sum(int a, int b){
		return a + b;
	}
%>
<%
	int count2 = 0;
	out.print("page Count is " + ++count1);
	out.print("<br />");
	out.print("page Count is " + ++count2);
	out.print("<br />");
	out.print("count1 + count2 = " + sum(count1,count2));
%>
</body>
</html>