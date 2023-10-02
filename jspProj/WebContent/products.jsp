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
<title>상품 목록</title>
</head>
<body>
<% // 스크립틀릿
	// 싱글톤 객체
	ProductRepository productDAO = ProductRepository.getInstance();
	//out.print("productDAO : " + productDAO.getAllProducts());
%>
<c:set var="listOfProducts" value="<%=productDAO.getAllProducts()%>" /> <!-- 리스트가져옴 -->
	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<div class="container">
		<!-- 상품 등록 버튼
			클릭 시 addProduct.jsp로 이동
		 -->
		<div class="row" style="display:flex; justify-content:right;">
			<!-- <a href="addProduct.jsp" type="button" class="btn btn-primary">상품 등록</button> -->
			<button type="button" class="btn btn-primary" onclick="location.href='addProduct.jsp'">상품 등록</button>
		</div>
		<!-- 상품 목록 -->
		<div class="row" align="center">
			<!--
			 ArrayList<ProductVO> listOfProducts
			 
			 var : JSTL변수
			 items : Collection, 배열
			 varStatus : (생략가능)
				 - index : 0부터 시작
				 - count : 1부터 시작
			 -->
			<c:forEach var="productVO" items="${listOfProducts}"
						 varStatus="stat">
				<div class="col-md-4">
					<h3>${productVO.pname}</h3>
					<p>${productVO.description}</p>
					<p>${productVO.unitPrice}원</p>
					<p>
						<a href="product.jsp?productId=${productVO.productId}"
						 class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
					</p>
				</div>
			</c:forEach>
		</div>
		<hr />
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>

