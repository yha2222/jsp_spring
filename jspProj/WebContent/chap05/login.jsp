<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<form action="/chap05/loginProcess.jsp" method="post">
		 <p><input type="text" placeholder="id입력" name="memId" /></p>
		 <p><input type="password" placeholder="pwd입력" name="memPw" /></p>
		 <p><input type="checkbox" value="자동로그인" name="memAuto" />
		 <input type="submit" value="로그인" ></p>
	</form>
</body>
</html>