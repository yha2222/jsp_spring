<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% 	// 스크립틀릿
	// 단순 날짜 형식
	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	String dt = date.format(new Date()); 
%>
<!-- 표현문 -->
<p>오늘은 <%=dt %>입니다.</p>