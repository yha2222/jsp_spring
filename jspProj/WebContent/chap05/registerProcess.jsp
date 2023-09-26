<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 완료</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String memId = request.getParameter("memId");
	String memPw = request.getParameter("memPw");
	String memNm = request.getParameter("memNm");

	if(memId.equals("admin")){
		response.sendRedirect("/chap05/register.jsp?message=error");
	}else{
%>
		<h2>회원가입 완료</h2>
		<p>아이디는 <%=memId %>이고</p><br />
		<p>비밀번호는 <%=memPw %>이며</p><br />
		<p>이름은 <%=memNm %>입니다.</p><br />
<%
	}
%>
</body>
</html>