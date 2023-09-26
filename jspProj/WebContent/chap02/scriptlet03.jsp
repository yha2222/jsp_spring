<%@page import="java.util.ArrayList"%>
<%@page import="vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%
	List<BoardVO> boardList = new ArrayList<BoardVO>();

	BoardVO boardVO = new BoardVO();
	boardVO.setBoardNo("1");
	boardVO.setBoardTitle("더글로리");
	boardVO.setBoardWriter("홍길동");
	boardList.add(boardVO);
	
	boardVO = new BoardVO();
	boardVO.setBoardNo("2");
	boardVO.setBoardTitle("무빙");
	boardVO.setBoardWriter("박명수");
	boardList.add(boardVO);
	
	boardVO = new BoardVO();
	boardVO.setBoardNo("3");
	boardVO.setBoardTitle("개똥이");
	boardVO.setBoardWriter("짜장면");
	boardList.add(boardVO);
%>
	<table border=1>
		<tr>
		<th>글번호</th>
		<th>글제목</th>
		<th>글쓴이</th>
		</tr>
<%	
	for(BoardVO vo : boardList){
%>
	<tr>
	 <td><%=vo.getBoardNo() %></td>
	 <td><%=vo.getBoardTitle() %></td>
	 <td><%=vo.getBoardWriter() %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>