package com.qraAdmin.service;

import org.springframework.stereotype.Service;

@Service
public class AdminLoginService {
public String forpasswordvalidation(String username, String password)
{
	System.out.println("username"+username);
	System.out.println("password"+password);
	String usernameAdmin ="qralink@gmail.com";
	String AdminuserPassword ="9044221797";
	if(username.equals(usernameAdmin)==true && password.equals(AdminuserPassword))
	{
		System.out.println("username in side if"+username);
		return "success";
	}
	else
	{
		System.out.println("username in side else"+username);
		return "unsucess";
	}
	
}
}
