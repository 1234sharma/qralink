package com.qraAdmin.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.ldap.embedded.EmbeddedLdapProperties.Credential;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.ProductBean;
import com.qraAdmin.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class SellerController {

	Random rand = new Random();

	@Autowired
	UserService userservice;

	@GetMapping("/sellerPage")
	public ModelAndView sellerPage() {
		ModelAndView model = new ModelAndView("Seller");
		return model;
	}

	@PostMapping(path = "", consumes = { MediaType.MULTIPART_FORM_DATA_VALUE })
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
	public ModelAndView addproduct(HttpServletRequest request, @RequestParam("image1") MultipartFile image1,
			@RequestParam("image2") MultipartFile image2) {
		ModelAndView model = new ModelAndView("addproduct");

		String productName = request.getParameter("productName");
		String brandName = request.getParameter("brandName");
		String category = request.getParameter("category");
		String subcategory = request.getParameter("subcategory");
		String microcategory = request.getParameter("microcategory");
		String productdesc = request.getParameter("productdesc");
		String productprice = request.getParameter("productprice");
		String modelnumber = request.getParameter("modelnumber");
		String weight = request.getParameter("weight");
		String shape = request.getParameter("shape");
		String color = request.getParameter("color");
		String material = request.getParameter("material");
		String orderqnt = request.getParameter("orderqnt");
		String uses = request.getParameter("uses");
		Path fileNameAndPath1 = null;
		Path fileNameAndPath2 = null;
		String imagepath1 = "";
		String imagePath2 = "";
		if (image1 != null) {
			fileNameAndPath1 = Paths.get("D:\\qrapics", "image1" + rand.nextInt(60000) + image1.getOriginalFilename());
		}
		if (!image2.isEmpty()) {
			fileNameAndPath2 = Paths.get("D:\\qrapics", "image2" + rand.nextInt(60000) + image2.getOriginalFilename());
		}
		try {
			if (fileNameAndPath1 != null) {
				Files.write(fileNameAndPath1, image1.getBytes());
				imagepath1 = fileNameAndPath1.toString();
				System.out.println(fileNameAndPath1.toString());
			}
			if (fileNameAndPath2 != null) {
				Files.write(fileNameAndPath2, image2.getBytes());
				imagePath2 = fileNameAndPath2.toString();
				System.out.println(fileNameAndPath2.toString());
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ProductBean product = new ProductBean(productName, brandName, productprice, category, subcategory,
				microcategory, productdesc, modelnumber, weight, shape, color, material, orderqnt, uses, imagepath1,
				imagePath2);
		System.out.println("count " + userservice.addProduct(product));

		return model;
	}

	@GetMapping("/getcategories")
	@ResponseBody
	public ResponseEntity<List<CategoryBean>> getCategories() {
		List l = new ArrayList();
		l.add(new CategoryBean(1, "food"));
		l.add(new CategoryBean(2, "cloth"));
		return new ResponseEntity<List<CategoryBean>>(l, HttpStatus.OK);
	}
}
