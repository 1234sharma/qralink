package com.qraAdmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AdminController {
	@GetMapping("/categories")
	public ModelAndView firstpage() {
		ModelAndView model = new ModelAndView("categories1");
		return model;
	}
}
