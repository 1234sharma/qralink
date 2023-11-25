package com.qraAdmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qraAdmin.dao.SellerDao;
import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.MicroCategoryBean;
import com.qraAdmin.model.ProductBean;
import com.qraAdmin.model.QuotationBean;
import com.qraAdmin.model.SubCategoryBean;
import com.qraAdmin.model.UserDetail;

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
	public UserDetail getUserDetail(int userId) {

		UserDetail userDetail = sellerdao.getUserDetail(userId);

		return userDetail;
	}
	
	public List<ProductBean> getProductListOfCurrentUser(int userId) {

		List<ProductBean> productlist = sellerdao.getProductList(userId);

		return productlist;
	}
	public ProductBean getProductByProductId(int productid) {

		ProductBean product = sellerdao.getProductByProductId(productid);

		return product;
	}
	public List<QuotationBean> getAvailableApprovedCustomerQuote() {

		List<QuotationBean> quotationlist = sellerdao.getAvailableApprovedCustomerQuote();

		return quotationlist;
	}
	public List<QuotationBean> getMyQuotes(int userId) {

		List<QuotationBean> quotationlist = sellerdao.getMyQuotes(userId);

		return quotationlist;
	}
	
	public int deleteProductById(int productId) {

		int count = sellerdao.deleteProductById(productId);

		return count;
	}
}
