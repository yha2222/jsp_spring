<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	// name 속성 값이 hobby인 요소가 여러 개인 경우 배열로 받음
	String[] hobbyArray = request.getParameterValues("hobby");
	String city = request.getParameter("city");
	String food = request.getParameter("food");
%>
<p>아이디: <%=id %></p>
<p>비밀번호: <%=passwd %></p>
<p>휴대폰 번호: <%=phone1 %>-<%=phone2 %>-<%=phone3 %></p>
<p>성별: <%=gender %></p>
<p>취미들: 
	<%
		for(String hobby : hobbyArray){
			out.print(hobby + ", ");
		}
	%>
</p>
<p>거주 도시: <%=city %></p>
<p>좋아하는 음식: <%=food %></p>
