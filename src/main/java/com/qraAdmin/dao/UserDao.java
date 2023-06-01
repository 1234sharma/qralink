package com.qraAdmin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.qraAdmin.model.ProductBean;
@Repository
public class UserDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	String insertproductQuery="INSERT INTO QRALINK.productdetail("
			+ "productName,"
			+ "brandName,"
			+ "productPrice,"
			+ "CategoryId,"
			+ "SubCategoryId,"
			+ "microCategoryId,"
			+ "productdesc,"
			+ "modelnumber,"
			+ "weight,"
			+ "shape,"
			+ "color,"
			+ "material,"
			+ "orderqnt,"
			+ "uses,"
			+ "pic1,"
			+ "pic2) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
    public List<Map<String, Object>> demo(){
    	//JdbcTemplate jdbcTemplate = new JdbcTemplate();
	String query ="select * from qralink.qra_credential;";
	System.out.println("sdasdsadasdasdsadsa"+jdbcTemplate.queryForList(query));
	return jdbcTemplate.queryForList(query);
}
    public int registerUser(String name,String mobileNumber,String CompanyName,String email,String country,String state,String city,String password,String userType) {
        int count=0;    	
    try {	
     count=	jdbcTemplate.update("INSERT INTO QRALINK.USERDETAILS(username"
    			+ ",mobile"
    			+ ",companyname"
    			+ ",email"
    			+ ",country"
    			+ ",state"
    			+ ",city"
    			+ ",password"
    			+ ",usertype) VALUES(?,?,?,?,?,?,?,?,?)",name, mobileNumber,CompanyName,email, country, state, city, password, userType);
    	
    }catch (Exception e) {
         count=0;
	}
    	return count;
    }
    
    
    public int addProduct(ProductBean product) {
    	int count=0;
    	try {
    	count =jdbcTemplate.update(insertproductQuery,product.getProductName(),
    			  product.getBrandName(),
    			  product.getProductPrice(),
    			  product.getCategoryId(),
    			  product.getSubCategoryId(),
    			  product.getMicroCategoryId(),
    			  product.getProductdesc(),
    			  product.getModelnumber(),
    			  product.getWeight(),
    			  product.getShape(),
    			  product.getColor(),
    			  product.getMaterial(),
    			  product.getOrderqnt(),
    			  product.getUses(),
    			  product.getPic1(),
    			  product.getPic2());
    	}catch (Exception e) {
			// TODO: handle exception
		}
    	
    	return count;
    	
    }
    
}