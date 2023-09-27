<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");

/* 	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String passwd = request.getParameter("passwd");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	String hobby1 = request.getParameter("hobby1");
	String hobby2 = request.getParameter("hobby2");
	String hobby3 = request.getParameter("hobby3");
	String comment = request.getParameter("comment"); */
	
	Enumeration paramNames = request.getParameterNames(); // form 안에 name들 열거형으로 가져옴
	
	while(paramNames.hasMoreElements()){
		String paramName = (String)paramNames.nextElement();
		out.print("<p>" + paramName + " : ");
		String paramValue = request.getParameter(paramName);
		out.print(paramValue + "</p>");
	}
	out.print("<hr />");
%>
<%-- <p>아이디: <%=id %></p>
<p>이름: <%=name %></p>
<p>비밀번호: <%=passwd %></p>
<p>휴대폰 번호: <%=phone1 %>-<%=phone2 %>-<%=phone3 %></p>
<p>성별: <%=gender %></p>
<p>취미들: <%=hobby1 %>-<%=hobby2 %>-<%=hobby3 %></p>
<pre><%=comment %></pre> --%>

