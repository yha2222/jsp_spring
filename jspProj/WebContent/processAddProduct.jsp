<%@page import="dao.ProductRepository"%>
<%@page import="vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% // 스크립틀릿
	request.setCharacterEncoding("UTF-8");

	//파라미터 값의 타입은 String
	String productId = request.getParameter("productId");
	String pname = request.getParameter("pname");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
	
	// request 객체를 VO에 세팅
	ProductVO productVO = new ProductVO();
	
	productVO.setProductId(productId);
	productVO.setPname(pname);
	// String타입을 int타입으로 변환
	productVO.setUnitPrice(Integer.parseInt(unitPrice));
	productVO.setDescription(description);
	productVO.setManufacturer(manufacturer);
	productVO.setCategory(category);
	// String타입을 long타입으로 변환
	//productVO.setUnitsInStock(Long.valueOf(unitsInStock)); => (null)인 경우 오류 발생
	long stock;
	
	if(unitsInStock.isEmpty()){
		stock = 0;
	}else{
		stock = Long.valueOf(unitsInStock);
	}
	productVO.setUnitsInStock(stock);
	productVO.setCondition(condition);
	// out : jsp 내장 객체(화면에 출력)
	out.print("<p>" + productVO + "</p>"); // .toString 안 붙여도 VO 내 toString() 떄문에 보임
	
	//ProductRepository dao = new ProductRepository(); // 이러면 기존과 달리 따로 생성됨
	// 상품 상세(product.jsp)에서 사용했던 객체 같이 쓰게 
	ProductRepository productDAO = ProductRepository.getInstance();
	productDAO.addProduct(productVO);
	// 상품 목록으로 이동
	response.sendRedirect("products.jsp");
%>