<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%
	List<MemberVO> memberVOList = new ArrayList<MemberVO>();

	MemberVO memberVO = new MemberVO();
	memberVO.setMemNo("2023001");
	memberVO.setMemNm("개똥이");
	memberVO.setEnabled("1");
	memberVOList.add(memberVO);
	
	memberVO = new MemberVO();
	memberVO.setMemNo("2023002");
	memberVO.setMemNm("김은대");
	memberVO.setEnabled("1");
	memberVOList.add(memberVO);
	
	memberVO = new MemberVO();
	memberVO.setMemNo("2023003");
	memberVO.setMemNm("이쁜이");
	memberVO.setEnabled("1");
	memberVOList.add(memberVO);
	
	// 2023001, 개똥이, 1
	// 2023002, 김은대, 1
	// 2023003, 이쁜이, 1
	
	for(MemberVO i : memberVOList){
		out.print(i.getMemNo() + ", " + i.getMemNm() +  ", " + i.getEnabled() +"<br />");
	}
	
%>
</body>
</html>