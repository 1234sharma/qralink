package com.qraAdmin.DTO;

import java.util.Arrays;

public class ProductBeanDTO {
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
	private byte[] pic1;
	private byte[] pic2;
    private int userid;
    private String productlive;
    private String image1encode64;
    private String image2encode64;
    
	public ProductBeanDTO() {
		
	}
	public ProductBeanDTO(long productId, String productName, String brandName, String productPrice, String categoryId,
			String subCategoryId, String microCategoryId, String productdesc, String modelnumber, String weight,
			String shape, String color, String material, String orderqnt, String uses, byte[] pic1, byte[] pic2,
			int userid, String productlive) {
		super();
		this.productId = productId;
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
		this.userid = userid;
		this.productlive = productlive;
	}
	
	public String getImage1encode64() {
		return image1encode64;
	}
	public void setImage1encode64(String image1encode64) {
		this.image1encode64 = image1encode64;
	}
	public String getImage2encode64() {
		return image2encode64;
	}
	public void setImage2encode64(String image2encode64) {
		this.image2encode64 = image2encode64;
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
	public byte[] getPic1() {
		return pic1;
	}
	public void setPic1(byte[] pic1) {
		this.pic1 = pic1;
	}
	public byte[] getPic2() {
		return pic2;
	}
	public void setPic2(byte[] pic2) {
		this.pic2 = pic2;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getProductlive() {
		return productlive;
	}
	public void setProductlive(String productlive) {
		this.productlive = productlive;
	}
	@Override
	public String toString() {
		return "ProductBeanDTO [productId=" + productId + ", productName=" + productName + ", brandName=" + brandName
				+ ", productPrice=" + productPrice + ", CategoryId=" + CategoryId + ", SubCategoryId=" + SubCategoryId
				+ ", microCategoryId=" + microCategoryId + ", productdesc=" + productdesc + ", modelnumber="
				+ modelnumber + ", weight=" + weight + ", shape=" + shape + ", color=" + color + ", material="
				+ material + ", orderqnt=" + orderqnt + ", uses=" + uses + ", pic1=" + Arrays.toString(pic1) + ", pic2="
				+ Arrays.toString(pic2) + ", userid=" + userid + ", productlive=" + productlive + ", image1encode64="
				+ image1encode64 + ", image2encode64=" + image2encode64 + "]";
	}

    
    
}
