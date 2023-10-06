package dao;

import java.util.ArrayList;

import vo.ProductVO;

// 상품을 저장하고 접근, 관리(In Memory)
public class ProductRepository {
	
	// 싱글톤 : 메모리에 객체가 1개 생성되어 공유됨 - DB마냥(공유/저장/통합/운영)
	private static ProductRepository instance = new ProductRepository();
	//private ProductRepository() {}
	public static ProductRepository getInstance() {
		return instance;
	}
	
	// ProductVO 제네릭 ArrayList 타입의 멤버변수
	private ArrayList<ProductVO> listOfProducts
		= new ArrayList<ProductVO>();

	// 상품 3개를 등록
	public ProductRepository() {
		ProductVO phone = new ProductVO("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1234X750 Renina HD display");
		phone.setManufacturer("Apple");
		phone.setCategory("Smart Phone");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		ProductVO notebook = new ProductVO("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display");
		notebook.setManufacturer("LG");
		notebook.setCategory("Notebook");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

		ProductVO tablet = new ProductVO("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("121.8*125 6*6.6mm, Super AMOLED display");
		tablet.setManufacturer("Samsung");
		tablet.setCategory("Tablet");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	// 모든 상품 목록 가져오기 - select * from ;
	public ArrayList<ProductVO> getAllProducts(){
		return this.listOfProducts;
	}
	
	// 상품 상세 보기 - where ; => 식별, 단일 반환
	public ProductVO getProductById(String productId) {
	
		ProductVO productById = null;
		
		for(int i = 0; i < listOfProducts.size(); i++) {
			ProductVO product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null &&
					product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	

}
