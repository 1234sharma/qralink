package com.qraAdmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qraAdmin.dao.SellerDao;
import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.MicroCategoryBean;
import com.qraAdmin.model.SubCategoryBean;

@Service
public class SellerService {

	@Autowired
	SellerDao sellerdao;

	public List<CategoryBean> getCategorylist() {

		List<CategoryBean> categaries = sellerdao.getCategorylist();

		return categaries;
	}

	public List<SubCategoryBean> getSubCategorylist(int categoryId) {

		List<SubCategoryBean> subcategories = sellerdao.getSubCategorylist(categoryId);

		return subcategories;
	}

	public List<MicroCategoryBean> getMicroCategorylist(int subcategoryId) {

		List<MicroCategoryBean> microcategories = sellerdao.getMicroCategorylist(subcategoryId);

		return microcategories;
	}
}
