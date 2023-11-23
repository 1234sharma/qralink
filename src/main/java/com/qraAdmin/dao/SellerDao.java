package com.qraAdmin.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.MicroCategoryBean;
import com.qraAdmin.model.ProductBean;
import com.qraAdmin.model.QuotationBean;
import com.qraAdmin.model.SubCategoryBean;
import com.qraAdmin.model.UserDetail;

@Repository
public class SellerDao {

	@Autowired
	JdbcTemplate jdbc;

	public String getCategoryQuery = "select * from qralink.category";
	public String getSubCategoryQuery = "SELECT * FROM qralink.subcategory where category_id=?";
	public String getMicroCategoryQuery = "SELECT * FROM qralink.microcategory where SUB_CATEGORY_ID=?";
	public String getUserDetail = "SELECT * FROM qralink.userdetail where userid=?";
	public String getProductListOfUser = "SELECT * FROM qralink.productdetail where userid=?";
	public String getApprovedQuotationList = "SELECT * FROM qralink.buyquotation where is_approved='N'";

	public List<CategoryBean> getCategorylist() {
		List<Map<String, Object>> l = jdbc.queryForList(getCategoryQuery);
		List<CategoryBean> categories = new ArrayList<CategoryBean>();
		for (Map<String, Object> map : l) {
			CategoryBean cat = new CategoryBean(Integer.parseInt(map.get("CATEGORYID").toString()),
					map.get("CATEGORY_NAME").toString());
			categories.add(cat);
		}
		return categories;
	}

	public List<SubCategoryBean> getSubCategorylist(int categoryid) {
		List<Map<String, Object>> l = jdbc.queryForList(getSubCategoryQuery, categoryid);
		System.out.println(l);
		List<SubCategoryBean> subcategories = new ArrayList<SubCategoryBean>();
		for (Map<String, Object> map : l) {
			SubCategoryBean cat = new SubCategoryBean(Integer.parseInt(map.get("SUB_CATEGORY_ID").toString()),
					map.get("SUB_CATEGORY_NAME").toString(), Integer.parseInt(map.get("CATEGORY_ID").toString()));
			subcategories.add(cat);
		}
		return subcategories;
	}

	public List<MicroCategoryBean> getMicroCategorylist(int subcategoryid) {
		List<Map<String, Object>> l = jdbc.queryForList(getMicroCategoryQuery, subcategoryid);
		System.out.println(l);
		List<MicroCategoryBean> microcategories = new ArrayList<MicroCategoryBean>();
		for (Map<String, Object> map : l) {
			MicroCategoryBean cat = new MicroCategoryBean(Integer.parseInt(map.get("MICRO_CATEGORY_ID").toString()),
					map.get("MICRO_CATEGORY_NAME").toString(), Integer.parseInt(map.get("SUB_CATEGORY_ID").toString()));
			microcategories.add(cat);
		}
		return microcategories;
	}

	public UserDetail getUserDetail(int userId) {
		UserDetail userdetail = null;
		try {
			List<Map<String, Object>> userdetails = jdbc.queryForList(getUserDetail, userId);
			System.out.println(userdetails);
			for (Map<String, Object> map : userdetails) {
				userdetail = new UserDetail();
				userdetail.setUserid(Integer.parseInt(map.get("userid").toString()));
				userdetail.setMobile(map.get("mobile").toString());
				userdetail.setCompanyname(map.get("companyname").toString());
				userdetail.setEmail(map.get("email").toString());
				userdetail.setCountry(map.get("country").toString());
				userdetail.setState(map.get("state").toString());
				userdetail.setCity(map.get("city").toString());
				userdetail.setPass(map.get("pass").toString());
				userdetail.setUsertype(map.get("usertype").toString());
			}
		} catch (Exception e) {
			System.out.println(e);
			return userdetail;
		}
		return userdetail;
	}

	public List<ProductBean> getProductList(int userId) {
		List<Map<String, Object>> products = jdbc.queryForList(getProductListOfUser, userId);
		System.out.println(products);
		List<ProductBean> productlist = new ArrayList<ProductBean>();
		for (Map<String, Object> map : products) {
			ProductBean product = new ProductBean();
			product.setBrandName(map.get("productName") == null ? null : map.get("productName").toString());
			product.setProductName(map.get("brandName") == null ? null : map.get("brandName").toString());
			product.setProductId(
					Integer.parseInt(map.get("productId") == null ? null : map.get("productId").toString()));
			product.setProductPrice(map.get("productPrice") == null ? null : map.get("productPrice").toString());
			product.setCategoryId((map.get("CategoryId") == null ? null : map.get("CategoryId").toString()));
			product.setSubCategoryId((map.get("SubCategoryId") == null ? null : map.get("SubCategoryId").toString()));
			product.setMicroCategoryId(
					(map.get("microCategoryId") == null ? null : map.get("microCategoryId").toString()));
			product.setProductdesc((map.get("productdesc") == null ? null : map.get("productdesc").toString()));
			product.setModelnumber((map.get("modelnumber") == null ? null : map.get("modelnumber").toString()));
			product.setWeight((map.get("weight") == null ? null : map.get("weight").toString()));
			product.setShape((map.get("shape") == null ? null : map.get("shape").toString()));
			product.setColor((map.get("color") == null ? null : map.get("color").toString()));
			product.setMaterial((map.get("material") == null ? null : map.get("material").toString()));
			product.setOrderqnt((map.get("orderqnt") == null ? null : map.get("orderqnt").toString()));
			product.setUses((map.get("uses") == null ? null : map.get("uses").toString()));
			product.setPic1((map.get("pic1") == null ? null : map.get("pic1").toString()));
			product.setPic2((map.get("pic2") == null ? null : map.get("pic2").toString()));
			product.setUserid(Integer.parseInt((map.get("userid") == null ? null : map.get("userid").toString())));
			product.setProductlive((map.get("productlive") == null ? null : map.get("productlive").toString()));
			productlist.add(product);
		}
		return productlist;
	}

	public List<QuotationBean> getAvailableApprovedCustomerQuote() {
		List<Map<String, Object>> quotations = jdbc.queryForList(getApprovedQuotationList);
		System.out.println(quotations);
		List<QuotationBean> quotationlist = new ArrayList<QuotationBean>();
		for (Map<String, Object> map : quotations) {
			QuotationBean quotation = new QuotationBean();
			quotation.setQuoteId(Integer.parseInt(map.get("quoteId") == null ? null : map.get("quoteId").toString()));
			quotation.setProduct_name(map.get("product_name") == null ? null : map.get("product_name").toString());
			quotation.setQuantiry(Integer.parseInt(map.get("quantiry") == null ? null : map.get("quantiry").toString()));
			quotation.setQuantity_type(map.get("quantity_typel") == null ? null : map.get("quantity_typel").toString());
			quotation.setEmail((map.get("email") == null ? null : map.get("email").toString()));
			quotation.setPerson_name((map.get("person_name") == null ? null : map.get("person_name").toString()));
			quotation.setCompany_name((map.get("company_name") == null ? null : map.get("company_name").toString()));
			quotation.setMobile((map.get("mobile") == null ? null : map.get("mobile").toString()));
			quotation.setUserid((map.get("userid") == null ? 0 : Integer.parseInt(map.get("userid").toString())));
			quotation.setIs_approved((map.get("is_approved") == null ? null : map.get("is_approved").toString()));
			quotationlist.add(quotation);
		}
		return quotationlist;
	}

}
