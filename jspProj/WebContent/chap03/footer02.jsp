<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.net.URLDecoder"%>
<%
	request.setCharacterEncoding("UTF-8");

	String nm = request.getParameter("nm");
	nm = URLDecoder.decode(nm);
%>
Copyright <%=nm%>
