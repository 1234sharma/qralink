package com.qraAdmin.controller;

import org.springframework.boot.autoconfigure.ldap.embedded.EmbeddedLdapProperties.Credential;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qraAdmin.model.ProductBean;

@Controller
public class SellerController {
	@GetMapping("/sellerPage")
	public ModelAndView sellerPage() {
		ModelAndView model = new ModelAndView("adminDashbard");
		return model;
	}
	
	@PostMapping(path = "" , consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
	public ModelAndView addProduct(@ModelAttribute ProductBean product) {
		
		ModelAndView model = new ModelAndView("adminDashbard");
		return model;
	}

	
	@GetMapping("/addproduct")
	public ModelAndView addproduct() {
		ModelAndView model = new ModelAndView("addproduct");
		return model;
	}
}
