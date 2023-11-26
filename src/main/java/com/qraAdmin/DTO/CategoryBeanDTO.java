package com.qraAdmin.DTO;

public class CategoryBeanDTO {
	int CATEGORYID;
	String CATEGORY_NAME;
	String CATEGORY_IMG;
	String CATEGORY_Flag;
    String base64EncodedImage;
	public CategoryBeanDTO(int cATEGORYID, String cATEGORY_NAME, String cATEGORY_IMG, String cATEGORY_Flag) {
		super();
		CATEGORYID = cATEGORYID;
		CATEGORY_NAME = cATEGORY_NAME;
		CATEGORY_IMG = cATEGORY_IMG;
		CATEGORY_Flag = cATEGORY_Flag;
	}
	
	public CategoryBeanDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getCATEGORYID() {
		return CATEGORYID;
	}
	public void setCATEGORYID(int cATEGORYID) {
		CATEGORYID = cATEGORYID;
	}
	public String getCATEGORY_NAME() {
		return CATEGORY_NAME;
	}
	public void setCATEGORY_NAME(String cATEGORY_NAME) {
		CATEGORY_NAME = cATEGORY_NAME;
	}
	public String getCATEGORY_IMG() {
		return CATEGORY_IMG;
	}
	public void setCATEGORY_IMG(String cATEGORY_IMG) {
		CATEGORY_IMG = cATEGORY_IMG;
	}
	public String getCATEGORY_Flag() {
		return CATEGORY_Flag;
	}
	public void setCATEGORY_Flag(String cATEGORY_Flag) {
		CATEGORY_Flag = cATEGORY_Flag;
	}

	public String getBase64EncodedImage() {
		return base64EncodedImage;
	}

	public void setBase64EncodedImage(String base64EncodedImage) {
		this.base64EncodedImage = base64EncodedImage;
	}
	
}
