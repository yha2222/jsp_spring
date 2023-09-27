package vo;

// 자바빈 클래스(멤버 변수, 기본생성자, getter/setter 메소드)
public class ProductVO {
	private String productId;
	private String pname;
	private String unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private String unitsInStock;
	private String condition;
	public String getProductId() {
		return productId;
	}
	// 기본 생성자
	public ProductVO() {}
	
	// productId, pname, unitPrice 파라미터를 매개변수로 받는 생성자 만들기
	public ProductVO(String productId, String pname, String unitPrice) {
		super();
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}
	
	// getter/setter 메소드
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInStock(String unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}	
}