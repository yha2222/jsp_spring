<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>크롬 to 톰캣</title>
</head>
<body>
	<!--
	요청 URI : /chap05/process.jsp
	요청파라미터 : {name=개똥이,id=a001}
	-->
	<form action="/chap05/process.jsp" method="post">
		<!-- 폼 데이터 -->
		<p>
			이름 : <input type="text" name="name" /><br/>
			아이디 : <input type="text" name="id" /><br/>
			<input type="submit" value="전송" />
		</p>
	</form>
</body>
</html>