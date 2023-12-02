package com.qraAdmin.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.qraAdmin.model.ProductBean;
import com.qraAdmin.model.QuotationBean;
import com.qraAdmin.model.UserDetail;

@Repository
public class AdminDao {

	@Autowired
	JdbcTemplate jdbc;

	public String getListOfUnapprovedProduct = "SELECT * FROM qralink.productdetail where productlive='N' ";
	public String getUnApprovedQuotationList = "SELECT * FROM qralink.buyquotation where is_approved='N'";
	public String getUsers = "SELECT * FROM qralink.userdetail";
	public String getlistOfBuyers = "SELECT * FROM qralink.userdetail where usertype='buyer'";
	public String getlistOfSellers = "SELECT * FROM qralink.userdetail where userid='seller'";
	public String getlistOfAdmins = "SELECT * FROM qralink.userdetail where userid='admin'";
	public String getAllProduct = "SELECT * FROM qralink.productdetail";
	public String updateToggelApproveStatus="update qralink.productdetail set productlive  = CASE WHEN productlive = 'N' THEN 'Y' WHEN productlive = 'Y' THEN 'N' else productlive END where productId=?";
	public List<ProductBean> getlistOfUnapprovedProducts() {
		List<Map<String, Object>> products = jdbc.queryForList(getListOfUnapprovedProduct);
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

	public List<QuotationBean> getUnApprovedCustomerQuote() {
		List<Map<String, Object>> quotations = jdbc.queryForList(getUnApprovedQuotationList);
		System.out.println(quotations);
		List<QuotationBean> quotationlist = new ArrayList<QuotationBean>();
		for (Map<String, Object> map : quotations) {
			QuotationBean quotation = new QuotationBean();
			quotation.setQuoteId(Integer.parseInt(map.get("quoteId") == null ? null : map.get("quoteId").toString()));
			quotation.setProduct_name(map.get("product_name") == null ? null : map.get("product_name").toString());
			quotation
					.setQuantiry(Integer.parseInt(map.get("quantiry") == null ? null : map.get("quantiry").toString()));
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

	public List<UserDetail> getListOfUsers() {

		List<UserDetail> listOfUserdetails = new ArrayList();
		try {
			List<Map<String, Object>> userdetails = jdbc.queryForList(getUsers);
			System.out.println(userdetails);
			for (Map<String, Object> map : userdetails) {
				UserDetail userdetail = new UserDetail();
				userdetail.setUserid(Integer.parseInt(map.get("userid").toString()));
				userdetail.setUsername((map.get("username").toString()));
				userdetail.setMobile(map.get("mobile").toString());
				userdetail.setCompanyname(map.get("companyname").toString());
				userdetail.setEmail(map.get("email").toString());
				userdetail.setCountry(map.get("country").toString());
				userdetail.setState(map.get("state").toString());
				userdetail.setCity(map.get("city").toString());
				userdetail.setPass(map.get("pass").toString());
				userdetail.setUsertype(map.get("usertype").toString());
				listOfUserdetails.add(userdetail);
			}
		} catch (Exception e) {
			System.out.println(e);
			return listOfUserdetails;
		}
		return listOfUserdetails;

	}
	public List<UserDetail> getListOfBuyers() {

		List<UserDetail> listOfUserdetails = new ArrayList();
		try {
			List<Map<String, Object>> userdetails = jdbc.queryForList(getUsers);
			System.out.println(userdetails);
			for (Map<String, Object> map : userdetails) {
				UserDetail userdetail = new UserDetail();
				userdetail.setUserid(Integer.parseInt(map.get("userid").toString()));
				userdetail.setUsername((map.get("username").toString()));
				userdetail.setMobile(map.get("mobile").toString());
				userdetail.setCompanyname(map.get("companyname").toString());
				userdetail.setEmail(map.get("email").toString());
				userdetail.setCountry(map.get("country").toString());
				userdetail.setState(map.get("state").toString());
				userdetail.setCity(map.get("city").toString());
				userdetail.setPass(map.get("pass").toString());
				userdetail.setUsertype(map.get("usertype").toString());
				listOfUserdetails.add(userdetail);
			}
		} catch (Exception e) {
			System.out.println(e);
			return listOfUserdetails;
		}
		return listOfUserdetails;

	}
	public List<UserDetail> getListOfsellers() {

		List<UserDetail> listOfUserdetails = new ArrayList();
		try {
			List<Map<String, Object>> userdetails = jdbc.queryForList(getUsers);
			System.out.println(userdetails);
			for (Map<String, Object> map : userdetails) {
				UserDetail userdetail = new UserDetail();
				userdetail.setUserid(Integer.parseInt(map.get("userid").toString()));
				userdetail.setUsername((map.get("username").toString()));
				userdetail.setMobile(map.get("mobile").toString());
				userdetail.setCompanyname(map.get("companyname").toString());
				userdetail.setEmail(map.get("email").toString());
				userdetail.setCountry(map.get("country").toString());
				userdetail.setState(map.get("state").toString());
				userdetail.setCity(map.get("city").toString());
				userdetail.setPass(map.get("pass").toString());
				userdetail.setUsertype(map.get("usertype").toString());
				listOfUserdetails.add(userdetail);
			}
		} catch (Exception e) {
			System.out.println(e);
			return listOfUserdetails;
		}
		return listOfUserdetails;

	}
	public List<UserDetail> getListOfAdmins() {

		List<UserDetail> listOfUserdetails = new ArrayList();
		try {
			List<Map<String, Object>> userdetails = jdbc.queryForList(getUsers);
			System.out.println(userdetails);
			for (Map<String, Object> map : userdetails) {
				UserDetail userdetail = new UserDetail();
				userdetail.setUserid(Integer.parseInt(map.get("userid").toString()));
				userdetail.setUsername((map.get("username").toString()));
				userdetail.setMobile(map.get("mobile").toString());
				userdetail.setCompanyname(map.get("companyname").toString());
				userdetail.setEmail(map.get("email").toString());
				userdetail.setCountry(map.get("country").toString());
				userdetail.setState(map.get("state").toString());
				userdetail.setCity(map.get("city").toString());
				userdetail.setPass(map.get("pass").toString());
				userdetail.setUsertype(map.get("usertype").toString());
				listOfUserdetails.add(userdetail);
			}
		} catch (Exception e) {
			System.out.println(e);
			return listOfUserdetails;
		}
		return listOfUserdetails;

	}
	
	public List<ProductBean> getAllProducts() {
		List<Map<String, Object>> products = jdbc.queryForList(getAllProduct);
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
			product.setUserid(Integer.parseInt((map.get("userid") == null ? "0" : map.get("userid").toString())));
			product.setProductlive((map.get("productlive") == null ? null : map.get("productlive").toString()));
			productlist.add(product);
		}
		return productlist;
	}
	public int toggelApproveStatus(int productId) {
		int count=0;
    	 count= jdbc.update(updateToggelApproveStatus, productId);
    	 return count;
	}


}
