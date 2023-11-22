package com.qraAdmin.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.qraAdmin.model.ProductBean;
import com.qraAdmin.model.QuotationBean;
import com.qraAdmin.service.SellerService;
import com.qraAdmin.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class BuyerController {

	@Autowired
	UserService userservice;
	@Autowired
	SellerService sellerservice;

	@PostMapping("/postbyreqquote")
	public ModelAndView postByReqQuote(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView("Home");
		int userid = 0;
		String usertype = null;
		Object id = session.getAttribute("userid");
		Object type = session.getAttribute("usertype");
		if (id != null && type != null) {
			userid = Integer.parseInt(String.valueOf(session.getAttribute("userid")));
			usertype = String.valueOf(session.getAttribute("usertype"));
		}
		if (userid > 0 && usertype != null && usertype.equals("buyer")) {
			String productName = request.getParameter("product_name");
			String estimated_quantity = request.getParameter("estimated_quantity");
			String quantity_type = request.getParameter("quantity_type");
			String email = request.getParameter("email");
			String person_name = request.getParameter("name");
			String company_name = request.getParameter("company_name");
			String mobile = request.getParameter("mobile");

			QuotationBean quote = new QuotationBean(productName, Integer.parseInt(estimated_quantity), quantity_type,
					email, person_name, company_name, mobile, userid, "N");
			int count = userservice.postByReqQuote(quote);
			if (count == 0) {
				model.addObject("quoteAdded", "Failed");
			} else {
				model.addObject("quoteAdded", "Succesfully");

			}
			return model;
		} else {
			return new ModelAndView("loginpage");
		}
	}

}
