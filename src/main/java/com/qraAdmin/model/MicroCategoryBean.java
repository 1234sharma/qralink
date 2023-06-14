package com.qraAdmin.model;

public class MicroCategoryBean {
	int MICRO_CATEGORY_ID;
	String MICRO_CATEGORY_NAME;

	public MicroCategoryBean(int mICRO_CATEGORY_ID, String mICRO_CATEGORY_NAME) {
		MICRO_CATEGORY_ID = mICRO_CATEGORY_ID;
		MICRO_CATEGORY_NAME = mICRO_CATEGORY_NAME;
	}

	public MicroCategoryBean() {

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

}
