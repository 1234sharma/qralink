package com.qraAdmin.model;

public class SubCategoryBean {
	int SUB_CATEGORY_ID;
	String SUB_CATEGORY_NAME;
	int CATEGORY_ID;
    String SUB_CATEGORY_IMG;
    String SUB_CATEGORY_FLG;
	public SubCategoryBean(int sUB_CATEGORY_ID, String sUB_CATEGORY_NAME, int cATEGORY_ID, String sUB_CATEGORY_IMG,
			String sUB_CATEGORY_FLG) {
		SUB_CATEGORY_ID = sUB_CATEGORY_ID;
		SUB_CATEGORY_NAME = sUB_CATEGORY_NAME;
		CATEGORY_ID = cATEGORY_ID;
		SUB_CATEGORY_IMG = sUB_CATEGORY_IMG;
		SUB_CATEGORY_FLG = sUB_CATEGORY_FLG;
	}
	public int getSUB_CATEGORY_ID() {
		return SUB_CATEGORY_ID;
	}
	public void setSUB_CATEGORY_ID(int sUB_CATEGORY_ID) {
		SUB_CATEGORY_ID = sUB_CATEGORY_ID;
	}
	public String getSUB_CATEGORY_NAME() {
		return SUB_CATEGORY_NAME;
	}
	public void setSUB_CATEGORY_NAME(String sUB_CATEGORY_NAME) {
		SUB_CATEGORY_NAME = sUB_CATEGORY_NAME;
	}
	public int getCATEGORY_ID() {
		return CATEGORY_ID;
	}
	public void setCATEGORY_ID(int cATEGORY_ID) {
		CATEGORY_ID = cATEGORY_ID;
	}
	public String getSUB_CATEGORY_IMG() {
		return SUB_CATEGORY_IMG;
	}
	public void setSUB_CATEGORY_IMG(String sUB_CATEGORY_IMG) {
		SUB_CATEGORY_IMG = sUB_CATEGORY_IMG;
	}
	public String getSUB_CATEGORY_FLG() {
		return SUB_CATEGORY_FLG;
	}
	public void setSUB_CATEGORY_FLG(String sUB_CATEGORY_FLG) {
		SUB_CATEGORY_FLG = sUB_CATEGORY_FLG;
	}
}

    
	