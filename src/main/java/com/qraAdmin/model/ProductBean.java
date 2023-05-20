package com.qraAdmin.model;

import org.springframework.web.multipart.MultipartFile;

public class ProductBean {
	private long productId;
	private String productName;
	private double productPrice;
	private String productWeight;
	private String CategoryId;
	private String SubCategoryId;
	private String microCategoryId;
	private MultipartFile pics;

}
