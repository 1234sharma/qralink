package com.qraAdmin.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.boot.autoconfigure.ldap.embedded.EmbeddedLdapProperties.Credential;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	public ModelAndView addproduct(HttpServletRequest request,@RequestParam("image1") MultipartFile image1) {
		ModelAndView model = new ModelAndView("addproduct");
		System.out.println(request.getParameter("productName"));
		System.out.println(request.getParameter("brandName"));
		System.out.println(request.getParameter("category"));
		System.out.println(request.getParameter("subcategory"));
		System.out.println(request.getParameter("microcategory"));
		System.out.println(request.getParameter("productdesc"));
		System.out.println(request.getParameter("productshortdesc"));
		System.out.println(request.getParameter("productprice"));
		System.out.println(request.getParameter("modelnumber"));
		System.out.println(request.getParameter("size"));
		System.out.println(request.getParameter("weight"));
		System.out.println(request.getParameter("shape"));
		System.out.println(request.getParameter("color"));
		System.out.println(request.getParameter("material"));
		System.out.println(request.getParameter("orderqnt"));
		System.out.println(request.getParameter("uses"));
		
		StringBuilder fileNames = new StringBuilder();
        Path fileNameAndPath = Paths.get("D:\\qrapics", "image1"+image1.getOriginalFilename());
        fileNames.append(image1.getOriginalFilename());
        try {
			Files.write(fileNameAndPath, image1.getBytes());
			System.out.println(fileNameAndPath);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        //model.addAttribute("msg", "Uploaded images: " + fileNames.toString());
		
		return model;
	}
}
