package com.qraAdmin.service;

import org.springframework.stereotype.Service;

@Service
public class AdminLoginService {
public String forpasswordvalidation(String username, String password)
{
	String usernameAdmin ="qralink@gmail.com";
	String AdminuserPassword ="9044221797";
	if(username.equals(usernameAdmin) || AdminuserPassword.equals(password) )
	{
		return "success";
	}
	else
	{
		return "Unsucccess";
	}
}
}
