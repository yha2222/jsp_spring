<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<script type="text/javascript">
let message = "${param.message}"; /* EL */
console.log("message : " + message);

if(message == "error"){
	alert("관리자 아이디는 회원가입 불가!")
}
</script>
</head>
<body>
<h2>회원가입</h2>
<!-- 
	요청URI : /chap05/registerProcess.jsp
	요청파라미터(QueryString) : {memId=a001, memPw=java, memNm=개똥이}
	요청방식 : post
-->
<form action="/chap05/registerProcess.jsp" method="post">
	<p>아이디 <input type="text" placeholder="id입력" name="memId" /></p>
	<p>비밀번호 <input type="password" placeholder="pw입력" name="memPw" /></p>
	<p>이름 <input type="text" placeholder="이름 입력" name="memNm" /></p>
	<p><button type="submit">회원가입</button></p>
</form>
</body>
</html>