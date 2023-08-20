package com.qraAdmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AdminController {
	//for supply and product we use below jsp three time 
	@GetMapping("/categories")
	public ModelAndView categories() {
		ModelAndView model = new ModelAndView("categories1");
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
	
	@GetMapping("/classifiedproduct")
	public ModelAndView Classified_Product_Category() {
		ModelAndView model = new ModelAndView("classifiedproduct");
		return model;
	}
	
	
}
