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
<title>상품 상세 정보</title>
</head>
<body>
<%
	ProductRepository productDAO = ProductRepository.getInstance();
	//  요청URI : product.jsp?productId=P1234
	String productId = request.getParameter("productId"); // P1234
	// P1234를 파라미터로 던지면 그 상품을 찾아서 ProductVO 타입의 객체가 리턴됨
	ProductVO productVO = productDAO.getProductById(productId);
	
%>
<c:set var="productVO" value="<%=productDAO.getProductById(productId)%>" />
	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<div class="col-md-6">
				<h3>${productVO.pname}</h3>
				<p>${productVO.description}</p>
				<p>
					<b>상품 코드 : </b><span class="badge badge-danger">${productVO.productId}</span>
				</p>
				<p><b>제조사</b> : ${productVO.manufacturer}</p>
				<p><b>분류</b> : ${productVO.category}</p>
				<p><b>재고</b> : ${productVO.unitsInStock}</p>
				<p>${productVO.unitPrice}원</p>
				<a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
			</div>
		</div>
		<hr />
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>

