<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%! // 선언문
	// 전연벽수 pageCount를 0으로 초기화
	int pageCount = 0;
	
	// 전역메소드 addCount() 선언, 리턴 타입 없음
	// pageCount를 1 증가시키는 후위증감연산자 처리
	void addCount(){ // 위치가 전역이라 public 필요없음..
		pageCount++;
	}
%>
<%  // 스크립틀릿
	// 전역 메소드 호출  => 방문수가 1 증가
	addCount();
%>
<p>이 사이트 방문은 <%=pageCount %>번째입니다</p>