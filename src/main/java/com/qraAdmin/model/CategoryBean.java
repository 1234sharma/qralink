package com.qraAdmin.model;

public class CategoryBean {
	int categoryId;
	String CATEGORY_NAME;

	public CategoryBean(int categoryId, String cATEGORY_NAME) {
		super();
		this.categoryId = categoryId;
		CATEGORY_NAME = cATEGORY_NAME;
	}

	public CategoryBean() {

	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCATEGORY_NAME() {
		return CATEGORY_NAME;
	}

	public void setCATEGORY_NAME(String cATEGORY_NAME) {
		CATEGORY_NAME = cATEGORY_NAME;
	}

	@Override
	public String toString() {
		return "CategoryBean [categoryId=" + categoryId + ", CATEGORY_NAME=" + CATEGORY_NAME + "]";
	}
	

}
