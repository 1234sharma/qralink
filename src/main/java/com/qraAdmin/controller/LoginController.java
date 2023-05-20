package com.qraAdmin.controller;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.ldap.embedded.EmbeddedLdapProperties.Credential;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.qraAdmin.dao.LoginDao;
import com.qraAdmin.service.AdminLoginService;

@Controller
public class LoginController {
	@Autowired
	LoginDao logindao;
	
	@Autowired(required=true)
	AdminLoginService adminservice;

	@GetMapping("/loginPage")
	public ModelAndView firstpage() {
		ModelAndView model = new ModelAndView("loginpage");
		return model;
	}

	@GetMapping("/qrahome")
	public ModelAndView firstpage2() {
		ModelAndView model = new ModelAndView("Home");
		return model;
	}
	@GetMapping("/admin")
	public ModelAndView AdminDash() {
		ModelAndView model = new ModelAndView("adminDashbard");
		return model;
	}

	@PostMapping("/login")
	public String loginPage2(@ModelAttribute Credential cr) {
	    String password = cr.getPassword();
		String username = cr.getUsername();
		System.out.println(password);
		System.out.println(username);
		//adminservice.forpasswordvalidation(username,password);
		return adminservice.forpasswordvalidation(username,password); 
	}
	
}
