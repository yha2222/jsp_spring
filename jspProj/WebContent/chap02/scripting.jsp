<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
<!-- 선언문 : 변수, 메소드 선언 -->
<%!
	int count = 3;
	int dan = 2;
	int[] jumsu = {50, 70, 60};
	// 전역변수
	int sum = 0;

	// String 타입의 매개변수 data
	// 결과 값을 String 타입으로 리턴해주는 메소드
	String makeItLower(String data){
		return data.toLowerCase();
	}

%>

<!-- 스크립틀릿 : 구현(분기, 반복, 로직 구현) -->
<%
	for(int i = 1; i <= count; i++){
		out.print("개똥이 : " + i + "<br />");
	}
	
	for(int i = 1; i <= 9; i++){
		out.print(dan + " X " + i + " = " + (dan * i) + "<br />");
	}
	
	for(int i = 0; i < 3; i++){
		out.print(jumsu[i] + "점" + "<br />");
		sum += jumsu[i];
	}
%>

<!-- 표현문 : 변수를 화면 출력 -->
<%=makeItLower("I Want Your Lift Best")%>
합계는 <%=sum%>점
평균은 <%=(double)sum/jumsu.length%>점
</body>
</html>