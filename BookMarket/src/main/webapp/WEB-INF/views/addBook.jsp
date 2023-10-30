<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<title>도서 등록</title>
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/home.jsp">Home</a>
		</div>
	</div>
</nav>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="newBook" action="processAddBook.jsp"
			class="form-horizonial" method="post"
			enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">도서 코드</label>
				<div class="col-sm-3">
					<input type="text" name="bookId" 
					 class="form-control" required />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">도서명</label>
				<div class="col-sm-3">
					<input type="text" name="name"
					 class="form-control" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="number" name="unitPrice"
					 class="form-control" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">저자</label>
				<div class="col-sm-3">
					<input type="text" name="author"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">출판사</label>
				<div class="col-sm-3">
					<input type="text" name="publisher"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">출판일</label>
				<div class="col-sm-3">
					<input type="date" name="releaseDate"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">총 페이지 수</label>
				<div class="col-sm-3">
					<input type="number" name="totalPages"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상세정보</label>
				<div class="col-sm-3">
					<input type="textarea" name="description"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">카테고리</label>
				<div class="col-sm-3">
					<input type="text" name="category"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">재고수</label>
				<div class="col-sm-3">
					<input type="number" name="unitsInStock"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-3">
					<input type="radio" id="condition1" name="condition"
					 value="New" /><label for="condition1">신규 도서</label>
					<input type="radio" id="condition2" name="condition"
					 value="Old" /><label for="condition2">중고 도서</label>
					<input type="radio" id="condition3" name="condition"
					 value="Refurbished" /><label for="condition3">E-Book</label>
				</div>
			</div>
			<div>
				<label class="col-sm-2">이미지</label>
				<input type="file" name="bookImage"/>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-secondary" 
						value="등록" onclick="CheckAddBook()" />
				</div>
			</div>
		</form>
		<hr />
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>