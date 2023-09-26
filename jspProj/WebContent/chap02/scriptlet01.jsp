<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%
	int a = 2;
	int b = 3;
	int sum = a+b;
	int count = 0;
	List<Integer> list = new ArrayList<>();
	// List<String> list = new ArrayList<String>();
	out.print("2 + 3 = " + sum);
	out.print("count: " + ++count + "<br />");
	out.print("2배수를 출력(1~10의 범위) <br />");
	
	for(int i = 1; i < 11; i++){
		if(i % 2 == 0 ){
			list.add(i);
			// list.add(String.valueof(i));
		}
	}

	// for(String str : list)
	for(int str : list){
		out.print(str  + "<br />");
	}
	
%>


</body>
</html>