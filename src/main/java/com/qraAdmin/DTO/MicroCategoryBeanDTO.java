package com.qraAdmin.DTO;

public class MicroCategoryBeanDTO {
	int MICRO_CATEGORY_ID;
	String MICRO_CATEGORY_NAME;
	int SUB_CATEGORY_ID;
	String MICRO_CATEGORY_IMG;
	String MICRO_CATEGORY_FLG;
	String SUB_CATEGORY_NAME;
	String base64EncodedImage;

	public MicroCategoryBeanDTO(int mICRO_CATEGORY_ID, String mICRO_CATEGORY_NAME, int sUB_CATEGORY_ID,
			String mICRO_CATEGORY_IMG, String mICRO_CATEGORY_FLG) {
		super();
		MICRO_CATEGORY_ID = mICRO_CATEGORY_ID;
		MICRO_CATEGORY_NAME = mICRO_CATEGORY_NAME;
		SUB_CATEGORY_ID = sUB_CATEGORY_ID;
		MICRO_CATEGORY_IMG = mICRO_CATEGORY_IMG;
		MICRO_CATEGORY_FLG = mICRO_CATEGORY_FLG;
	}

	public MicroCategoryBeanDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getMICRO_CATEGORY_ID() {
		return MICRO_CATEGORY_ID;
	}

	public void setMICRO_CATEGORY_ID(int mICRO_CATEGORY_ID) {
		MICRO_CATEGORY_ID = mICRO_CATEGORY_ID;
	}

	public String getMICRO_CATEGORY_NAME() {
		return MICRO_CATEGORY_NAME;
	}

	public void setMICRO_CATEGORY_NAME(String mICRO_CATEGORY_NAME) {
		MICRO_CATEGORY_NAME = mICRO_CATEGORY_NAME;
	}

	public int getSUB_CATEGORY_ID() {
		return SUB_CATEGORY_ID;
	}

	public void setSUB_CATEGORY_ID(int sUB_CATEGORY_ID) {
		SUB_CATEGORY_ID = sUB_CATEGORY_ID;
	}

	public String getMICRO_CATEGORY_IMG() {
		return MICRO_CATEGORY_IMG;
	}

	public void setMICRO_CATEGORY_IMG(String mICRO_CATEGORY_IMG) {
		MICRO_CATEGORY_IMG = mICRO_CATEGORY_IMG;
	}

	public String getMICRO_CATEGORY_FLG() {
		return MICRO_CATEGORY_FLG;
	}

	public void setMICRO_CATEGORY_FLG(String mICRO_CATEGORY_FLG) {
		MICRO_CATEGORY_FLG = mICRO_CATEGORY_FLG;
	}

	public String getBase64EncodedImage() {
		return base64EncodedImage;
	}

	public void setBase64EncodedImage(String base64EncodedImage) {
		this.base64EncodedImage = base64EncodedImage;
	}

	public String getSUB_CATEGORY_NAME() {
		return SUB_CATEGORY_NAME;
	}

	public void setSUB_CATEGORY_NAME(String sUB_CATEGORY_NAME) {
		SUB_CATEGORY_NAME = sUB_CATEGORY_NAME;
	}

}
