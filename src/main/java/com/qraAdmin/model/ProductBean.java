package com.qraAdmin.model;


public class ProductBean {
	private long productId;
	private String productName;
	private String brandName;
	private String productPrice;
	private String CategoryId;
	private String SubCategoryId;
	private String microCategoryId;
	private String productdesc;
	private String modelnumber;
	private String weight;
	private String shape;
	private String color;
	private String material;
	private String orderqnt;
	private String uses;
	private String pic1;
	private String pic2;
	
	public ProductBean(String productName, String brandName, String productPrice,
			String categoryId, String subCategoryId, String microCategoryId, String productdesc, String modelnumber,
			String weight, String shape, String color, String material, String orderqnt, String uses, String pic1,
			String pic2) {
		super();
		this.productName = productName;
		this.brandName = brandName;
		this.productPrice = productPrice;
		CategoryId = categoryId;
		SubCategoryId = subCategoryId;
		this.microCategoryId = microCategoryId;
		this.productdesc = productdesc;
		this.modelnumber = modelnumber;
		this.weight = weight;
		this.shape = shape;
		this.color = color;
		this.material = material;
		this.orderqnt = orderqnt;
		this.uses = uses;
		this.pic1 = pic1;
		this.pic2 = pic2;
	}
	public long getProductId() {
		return productId;
	}
	public void setProductId(long productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	
	public String getCategoryId() {
		return CategoryId;
	}
	public void setCategoryId(String categoryId) {
		CategoryId = categoryId;
	}
	public String getSubCategoryId() {
		return SubCategoryId;
	}
	public void setSubCategoryId(String subCategoryId) {
		SubCategoryId = subCategoryId;
	}
	public String getMicroCategoryId() {
		return microCategoryId;
	}
	public void setMicroCategoryId(String microCategoryId) {
		this.microCategoryId = microCategoryId;
	}
	public String getProductdesc() {
		return productdesc;
	}
	public void setProductdesc(String productdesc) {
		this.productdesc = productdesc;
	}
	public String getModelnumber() {
		return modelnumber;
	}
	public void setModelnumber(String modelnumber) {
		this.modelnumber = modelnumber;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getShape() {
		return shape;
	}
	public void setShape(String shape) {
		this.shape = shape;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getOrderqnt() {
		return orderqnt;
	}
	public void setOrderqnt(String orderqnt) {
		this.orderqnt = orderqnt;
	}
	public String getUses() {
		return uses;
	}
	public void setUses(String uses) {
		this.uses = uses;
	}
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	public String getPic2() {
		return pic2;
	}
	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}

	
	
}
