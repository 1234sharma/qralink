package com.qraAdmin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qraAdmin.dao.UserDao;
import com.qraAdmin.model.UserDetail;

@Service
public class AdminLoginService {

	@Autowired
	UserDao userDao;

	public UserDetail forpasswordvalidation(String username, String password) throws Exception {
		System.out.println("username" + username);
		System.out.println("password" + password);
		UserDetail userdetail = null;
		try {
			userdetail = userDao.getUserIfExist(username, password);
			System.out.println(userdetail);
		} catch (Exception e) {
			userdetail = null;
		}
		if (userdetail != null) {
			return userdetail;
		} else {
			throw new Exception();
		}

	}
}
