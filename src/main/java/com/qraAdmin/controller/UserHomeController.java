package com.qraAdmin.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.qraAdmin.dao.AddCategoryDao;
@RestController
public class UserHomeController {

@Value("${image.store.path}")
private String filelocation;
	
@Autowired
AddCategoryDao categoryDao;
	
	
	@GetMapping("/home")
	public ModelAndView ChangePassword() {
		ModelAndView model = new ModelAndView("Home");
		return model;
	}

@GetMapping("/trendingCategory")
public List<Map<String, Object>> getTradeCategory(){
	List< Map<String,Object>> gettradelist = new ArrayList<>();
	gettradelist = categoryDao.getTradeData();
	System.out.println("list of trading categary :"+gettradelist);
	return gettradelist;
}

@PostMapping("/gettrendcatdata")
public List<Map<String, Object>> getSubTradeCategory(){
	List< Map<String,Object>> getsubtradelist = new ArrayList<>();
	getsubtradelist = categoryDao.getSubTradeData();
	System.out.println("list of trading categary :"+getsubtradelist);
	return getsubtradelist;
}
}