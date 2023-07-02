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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.MicroCategoryBean;
import com.qraAdmin.model.ProductBean;
import com.qraAdmin.model.SubCategoryBean;
import com.qraAdmin.service.SellerService;
import com.qraAdmin.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.server.PathParam;

@Controller
public class SellerController {

	Random rand = new Random();

	@Autowired
	UserService userservice;
	@Autowired
	SellerService sellerservice;

	@GetMapping("/sellerPage")
	public ModelAndView sellerPage(HttpServletRequest req) {
		ModelAndView model = null;
		int userid=0;
		String usertype=null;
		HttpSession session = req.getSession();
		Object id = session.getAttribute("userid");
		Object type = session.getAttribute("usertype");
		if(id!=null && type!=null) {
			 userid = Integer.parseInt(String.valueOf(session.getAttribute("userid")));
			 usertype = String.valueOf(session.getAttribute("usertype"));	
		}
		if (userid > 0 && usertype!=null && usertype.equals("seller")) {
			model = new ModelAndView("Seller");
		} else {
			model = new ModelAndView("loginpage");
		}
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
		List<CategoryBean> cat = sellerservice.getCategorylist();
		System.out.println(cat);
		return new ResponseEntity<List<CategoryBean>>(cat, HttpStatus.OK);
	}

	@GetMapping("/getsubcategories/{categoryid}")
	@ResponseBody
	public ResponseEntity<List<SubCategoryBean>> getSubCategories(@PathVariable("categoryid") String catid) {
		List l = new ArrayList();
		System.out.println("category id is " + catid);
		List<SubCategoryBean> cat = sellerservice.getSubCategorylist(Integer.parseInt(catid));
		System.out.println(cat);
		return new ResponseEntity<List<SubCategoryBean>>(cat, HttpStatus.OK);
	}

	@GetMapping("/getmicrocategories/{subcategoryid}")
	@ResponseBody
	public ResponseEntity<List<MicroCategoryBean>> getMicroCategories(@PathVariable("subcategoryid") String subcatid) {
		List l = new ArrayList();
		List<MicroCategoryBean> microcategories = sellerservice.getMicroCategorylist(Integer.parseInt(subcatid));
		System.out.println(microcategories);
		return new ResponseEntity<List<MicroCategoryBean>>(microcategories, HttpStatus.OK);
	}
}
