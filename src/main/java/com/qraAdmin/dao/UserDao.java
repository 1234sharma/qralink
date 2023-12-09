package com.qraAdmin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.qraAdmin.model.ProductBean;
import com.qraAdmin.model.QuotationBean;
import com.qraAdmin.model.UserDetail;
import com.qraAdmin.rowmapper.UserDetailRowMapper;

@Repository
public class UserDao {
	@Autowired
	JdbcTemplate jdbcTemplate;

	String insertproductQuery = "INSERT INTO QRALINK.productdetail(" + "productName," + "brandName," + "productPrice,"
			+ "CategoryId," + "SubCategoryId," + "microCategoryId," + "productdesc," + "modelnumber," + "weight,"
			+ "shape," + "color," + "material," + "orderqnt," + "uses," + "pic1,"
			+ "pic2,userid,productlive,currencyType) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String postByReqSQLQuery = "INSERT INTO `qralink`.`buyquotation` (`product_name`, `quantiry`, `quantity_typel`, "
			+ "`email`, `person_name`, `company_name`, `mobile`, `userid`, `is_approved`) VALUES(?,?,?,?,?,?,?,?,?)";

	public List<Map<String, Object>> demo() {
		// JdbcTemplate jdbcTemplate = new JdbcTemplate();
		String query = "select * from qralink.qra_credential;";
		System.out.println("sdasdsadasdasdsadsa" + jdbcTemplate.queryForList(query));
		return jdbcTemplate.queryForList(query);
	}

	public int registerUser(String name, String mobileNumber, String CompanyName, String email, String country,
			String state, String city, String password, String userType,String active) {
		int count = 0;
		try {
			count = jdbcTemplate.update(
					"INSERT INTO QRALINK.USERDETAIL(username" + ",mobile" + ",companyname" + ",email" + ",country"
							+ ",state" + ",city" + ",pass" + ",usertype" + ",active) VALUES(?,?,?,?,?,?,?,?,?,?)",
					name, mobileNumber, CompanyName, email, country, state, city, password, userType,active);

		} catch (Exception e) {
			System.out.println("exception is " + e);
			count = 0;
		}
		return count;
	}

	public int addProduct(ProductBean product) {
		int count = 0;
		try {
			count = jdbcTemplate.update(insertproductQuery, product.getProductName(), product.getBrandName(),
					product.getProductPrice(), product.getCategoryId(), product.getSubCategoryId(),
					product.getMicroCategoryId(), product.getProductdesc(), product.getModelnumber(),
					product.getWeight(), product.getShape(), product.getColor(), product.getMaterial(),
					product.getOrderqnt(), product.getUses(), product.getPic1(), product.getPic2(), product.getUserid(),
					product.getProductlive(),product.getCurrencyType());
		} catch (Exception e) {
			// TODO: handle exception
		}

		return count;

	}

	public int postByReqQuoteDao(QuotationBean quote) {
		int count = 0;
		try {
			count = jdbcTemplate.update(postByReqSQLQuery, quote.getProduct_name(), quote.getQuantiry(),
					quote.getQuantity_type(), quote.getEmail(), quote.getPerson_name(), quote.getCompany_name(),
					quote.getMobile(), quote.getUserid(), quote.getIs_approved());
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}

		return count;

	}

	public UserDetail getUserIfExist(String username, String password) {
		String sql = "SELECT * FROM qralink.userdetail where active=\"Y\"and email=\"" + username + "\" and pass=\"" + password + "\"";
		UserDetail userdetail = null;
		try {
			System.out.println(sql);
			userdetail = jdbcTemplate.queryForObject(sql, new UserDetailRowMapper());
			System.out.println(userdetail);
		} catch (Exception e) {
			System.out.println(e);
			userdetail = null;
		}

		return userdetail;
	}

}
