package com.qraAdmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qraAdmin.dao.SellerDao;
import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.SubCategoryBean;

@Service
public class SellerService {

	@Autowired
	SellerDao sellerdao;

	public List<CategoryBean> getCategorylist() {

		List<CategoryBean> cat = sellerdao.getCategorylist();

		return cat;
	}

	public List<SubCategoryBean> getSubCategorylist(int categoryId) {

		List<SubCategoryBean> cat = sellerdao.getSubCategorylist(categoryId);

		return cat;
	}

}
