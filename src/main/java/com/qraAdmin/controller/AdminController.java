package com.qraAdmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AdminController {
	//for supply and product we use below jsp three time 
	@GetMapping("/classifiedcategories")
	public ModelAndView categories() {
		ModelAndView model = new ModelAndView("classified_categories");
		return model;
	}
	
	@GetMapping("/Tradecategories")
	public ModelAndView Tradecategories() {
		ModelAndView model = new ModelAndView("TradeDash");
		return model;
	}
	
	//classified categories there is one more jsp use for Classified Sub Category(Used Packaging Machine) as shown below
	@GetMapping("/categories1")
	public ModelAndView Classified_Category() {
		ModelAndView model = new ModelAndView("Classified_ctg");
		return model;
	}
	
	@GetMapping("/categories1Sub")
	public ModelAndView Classified_SubCategory() {
		ModelAndView model = new ModelAndView("Classified_Subctg");
		return model;
	}
	 
	//trade and product categories menu 
	@GetMapping("/TradeLeadcategories")
	public ModelAndView Show_trade_lead_Category() {
		ModelAndView model = new ModelAndView("Tradecategories");
		return model;
	}
	// for classified product
	@GetMapping("/classifiedproduct")
	public ModelAndView Classified_Product_Category() {
		ModelAndView model = new ModelAndView("classifiedproduct");
		return model;
	}
	// for password change 
	@GetMapping("/changepassword")
	public ModelAndView ChangePassword() {
		ModelAndView model = new ModelAndView("ChangePassword");
		return model;
	}
	//General Settings 
	@GetMapping("/generalsettings")
	public ModelAndView GeneralSettings() {
		ModelAndView model = new ModelAndView("GeneralSettings");
		return model;
	}
	//package service add for member package menu
	@GetMapping("/packserviceadd")
	public ModelAndView packserviceadd() {
		ModelAndView model = new ModelAndView("packserviceadd");
		return model;
	}

	
	//package service edit for member package menu
		@GetMapping("/memberpackage")
		public ModelAndView memberpackage() {
			ModelAndView model = new ModelAndView("memberpackage");
			return model;
		}

	
}
