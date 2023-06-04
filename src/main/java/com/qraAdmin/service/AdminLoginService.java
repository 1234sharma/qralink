package com.qraAdmin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qraAdmin.dao.UserDao;

@Service
public class AdminLoginService {

	@Autowired
	UserDao userDao;

	public String forpasswordvalidation(String username, String password) throws Exception {
		System.out.println("username" + username);
		System.out.println("password" + password);
		String usernameAdmin = "qralink@gmail.com";
		String AdminuserPassword = "9044221797";
		String userType = null;
		try {
			userType = userDao.getUserIfExist(username, password);
			System.out.println(userType);
		} catch (Exception e) {
			userType = null;
		}
		if (userType != null && !userType.equals("")) {
			return userType;
		} else {
			throw new Exception();
		}

	}
}
