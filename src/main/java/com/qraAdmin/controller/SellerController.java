package com.qraAdmin.controller;

import org.springframework.boot.autoconfigure.ldap.embedded.EmbeddedLdapProperties.Credential;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qraAdmin.model.ProductBean;

import jakarta.servlet.http.HttpServletRequest;

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

	
	@GetMapping("/addproductPage")
	public ModelAndView addproductPage() {
		ModelAndView model = new ModelAndView("addproduct");
		return model;
	}
	
	@GetMapping("/sellerdash")
	public ModelAndView sellerdashboard() {
		ModelAndView model = new ModelAndView("Seller");
		return model;
	}
	
	
	@PostMapping("/addProduct")
	public ModelAndView addproduct(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("addproduct");
		System.out.println(request.getParameter("productName"));
		return model;
	}
}
