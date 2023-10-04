<%@page import="vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 링크 렐르 흐 -->
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<!DOCTYPE html>
<html>
<head>
<title>상품 등록</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	<div class="container">
		<!-- 폼태그
			 요청URI : /processAddProduct.jsp
			 요청방식 : post
		-->
		<form name="newProduct" action="processAddProduct.jsp"
			class="form-horizonial" method="post">
			<!-- 폼 데이터 -->
			<div class="form-group row">
			<!-- required : 필수(mandatory) 항목 => Not Null -->
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<!-- vo멤버변수명 폼 name 동일하게 보낼 때 받을 때 같은 이름 쓰게 -->
					<input type="text" name="productId" 
					 class="form-control" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="pname"
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
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-3">
					<input type="text" name="description"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="number" name="unitsInStock"
					 class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-3">
					<input type="radio" id="condition1" name="condition"
					 value="New" /><label for="condition1">신규 제품</label>
					<input type="radio" id="condition2" name="condition"
					 value="Old" /><label for="condition2">중고 제품</label>
					<input type="radio" id="condition3" name="condition"
					 value="Refurbished" /><label for="condition3">재생 제품</label>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" 
						value="등록" />
				</div>
			</div>
		</form>
		<hr />
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>

