<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!-- 링크 렐르 흐 -->
  <link rel="stylesheet" href="/css/bootstrap.min.css" />
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div class="navbar navbar-expand navbar-dark bg-dark">
		<!-- container : 내용 존재 -->
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/welcome.jsp">Home</a>
			</div>
		</div>
	</div>

	<h1>종찬이의 홈에 오신 걸 환영합니다!</h1>
	<%
		String name = "윤하";
	%>
	<h3><%=name %> 참석했습니다~</h3>
</body>
</html>