package com.qraAdmin.model;

public class SubCategoryBean {
	int SUB_CATEGORY_ID;
	String SUB_CATEGORY_NAME;

	public SubCategoryBean(int sUB_CATEGORY_ID, String sUB_CATEGORY_NAME) {
		super();
		SUB_CATEGORY_ID = sUB_CATEGORY_ID;
		SUB_CATEGORY_NAME = sUB_CATEGORY_NAME;
	}

	public SubCategoryBean() {

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

}
