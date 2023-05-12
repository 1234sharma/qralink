package com.qraAdmin.controller;

import org.springframework.boot.autoconfigure.ldap.embedded.EmbeddedLdapProperties.Credential;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SellerController {
	@GetMapping("/sellerPage")
	public ModelAndView sellerPage() {
		ModelAndView model = new ModelAndView("adminDashbard");
		return model;
	}

}
