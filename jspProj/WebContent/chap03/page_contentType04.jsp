<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="page_errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>오류 처리</title>
</head>
<body>
<%
MemberVO memberVO = null; //new MemberVO();

memberVO.setMemNo("1");
memberVO.setMemNm("개똥이");
memberVO.setEnabled("1");

// 오류 나는 이유
// errorPage 속성 처리
// 오류 디버깅
%> 
</body>
</html>