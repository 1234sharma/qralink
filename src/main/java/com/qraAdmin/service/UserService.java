package com.qraAdmin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qraAdmin.dao.UserDao;
import com.qraAdmin.model.ProductBean;

@Service
public class UserService {
	
	@Autowired
	UserDao userdao;
	
	
	public int userRegister(String name,String mobile,String companyName,String email,String country,String state,String city ,String password,String usertype )
	{
		return userdao.registerUser(name, mobile, companyName, email, country, state, city, password, usertype);
		
	}
	
	public int addProduct(ProductBean product) {
		int count=0;
		count=userdao.addProduct(product);
		return count;
	}

}
