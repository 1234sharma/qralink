package com.qraAdmin.model;

public class CategoryBean {
	int CATEGORYID;
	String CATEGORY_NAME;
	String CATEGORY_IMG;
	String CATEGORY_Flag;
	
	public CategoryBean(int cATEGORYID, String cATEGORY_NAME, String cATEGORY_IMG, String cATEGORY_Flag) {
		super();
		CATEGORYID = cATEGORYID;
		CATEGORY_NAME = cATEGORY_NAME;
		CATEGORY_IMG = cATEGORY_IMG;
		CATEGORY_Flag = cATEGORY_Flag;
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

	@Override
	public String toString() {
		return "CategoryBean [CATEGORYID=" + CATEGORYID + ", CATEGORY_NAME=" + CATEGORY_NAME + ", CATEGORY_IMG="
				+ CATEGORY_IMG + ", CATEGORY_Flag=" + CATEGORY_Flag + "]";
	}

	
}
