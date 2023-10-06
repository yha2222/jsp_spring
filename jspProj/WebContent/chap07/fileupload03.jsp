<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<!--
		파일 업로드 하기 위해서 기억해야 할 사항
		1. form태그
		2. post 방식
		3. multipart/form-data
		4. file  
	-->
	<form action="fileupload03_process.jsp"
	method="post" enctype="multipart/form-data">
		<p>파일 : <input type="file" name="filename" /></p>
		<p><input type="submit" value="파일 올리기" /></p>
	</form>
</body>
</html>