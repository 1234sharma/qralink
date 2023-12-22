package com.qraAdmin.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.qraAdmin.DTO.CategoryBeanDTO;
import com.qraAdmin.DTO.MicroCategoryBeanDTO;
import com.qraAdmin.DTO.SubCategoryBeanDTO;
import com.qraAdmin.dao.AddCategoryDao;
import com.qraAdmin.dao.AdminDao;
import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.MicroCategoryBean;
import com.qraAdmin.model.ProductBean;
import com.qraAdmin.model.QuotationBean;
import com.qraAdmin.model.SubCategoryBean;
import com.qraAdmin.model.UserDetail;
import com.qraAdmin.service.SellerService;
import com.qraAdmin.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@RestController
public class AdminController {
	// for supply and product we use below jsp three time

	@Value("${image.store.path}")
	private String filelocation;

	@Autowired
	AddCategoryDao addCategoryDao;

	@Autowired
	AdminDao adminDao;

	Random rand = new Random();

	@Autowired
	UserService userservice;
	@Autowired
	SellerService sellerservice;

	@GetMapping("/dashboard")
	public ModelAndView categories() {
		ModelAndView model = new ModelAndView("adminDashboard");
		return model;
	}
	@GetMapping("/productListForApproval")
	public ModelAndView productListForApproval(HttpServletRequest req) {
		if (req.getSession().getAttribute("userid") != null) {
		ModelAndView model = new ModelAndView("productListApproval");
		return model;
		}
		return new ModelAndView("loginpage");
	}
	@GetMapping("/allProductListPage")
	public ModelAndView allProductListPage(HttpServletRequest req) {
		if (req.getSession().getAttribute("userid") != null) {
		ModelAndView model = new ModelAndView("allProductList");
		return model;
		}
		return new ModelAndView("loginpage");
	}
	@GetMapping("/allUserListPage")
	public ModelAndView allUserListPage(HttpServletRequest req) {
		if (req.getSession().getAttribute("userid") != null) {
		ModelAndView model = new ModelAndView("allUserList");
		return model;
		}
		return new ModelAndView("loginpage");
	}
	
	@GetMapping("/quotesForApproval")
	public ModelAndView quotesForApproval(HttpServletRequest req) {
		if (req.getSession().getAttribute("userid") != null) {
		ModelAndView model = new ModelAndView("quotesForApproval");
		return model;
		}
		return new ModelAndView("loginpage");
	}

	@GetMapping("/adminDashboard")
	public ModelAndView AdminDash(HttpServletRequest req) {
		ModelAndView model = null;
		if (req.getSession().getAttribute("userid") != null) {
			model = new ModelAndView("adminDashboard");
			int userId = Integer.parseInt(String.valueOf(req.getSession().getAttribute("userid")));
			List<QuotationBean> approvedQuotations = sellerservice.getAvailableApprovedCustomerQuote();
			List<ProductBean> allproducts = adminDao.getAllProducts();
			List<UserDetail> listOfAdmins = adminDao.getListOfAdmins();
			List<UserDetail> listOfBuyers = adminDao.getListOfBuyers();
			List<UserDetail> listOfSellers = adminDao.getListOfsellers();
			List<ProductBean> unapprovedProducts = adminDao.getlistOfUnapprovedProducts();
			List<UserDetail> allusers = adminDao.getListOfUsers();
			UserDetail user= sellerservice.getUserDetail(userId);
			List<QuotationBean> unapprovedQuotation = adminDao.getUnApprovedCustomerQuote();
			model.addObject("user", user);
			model.addObject("approvedQuotations", approvedQuotations);
			model.addObject("allproducts", allproducts);
			model.addObject("listOfAdmins", listOfAdmins);
			model.addObject("listOfBuyers", listOfBuyers);
			model.addObject("listOfSellers", listOfSellers);
			model.addObject("unapprovedProducts", unapprovedProducts);
			model.addObject("allusers", allusers);
			model.addObject("unapprovedQuotation", unapprovedQuotation);

		} else {
			return new ModelAndView("loginpage");
		}
		return model;
	}

	@GetMapping("/editcategories")
	public ModelAndView Tradecategories() {
		ModelAndView model = new ModelAndView("EditPage");
		return model;
	}

	// classified categories there is one more jsp use for Classified Sub
	// Category(Used Packaging Machine) as shown below
	@GetMapping("/addcategories")
	public ModelAndView Classified_Category() {
		ModelAndView model = new ModelAndView("AddCategories");
		return model;
	}

//	
	@GetMapping("/subcategories")
	public ModelAndView Classified_SubCategory() {
		ModelAndView model = new ModelAndView("SubCategories");
		return model;
	}

	@GetMapping("/microcategories")
	public ModelAndView Classified_MicroCategory() {
		ModelAndView model = new ModelAndView("MicroCategories");
		return model;
	}

//	 
//	//trade and product categories menu 
//	
	// for password change
	@GetMapping("/changepassword")
	public ModelAndView ChangePassword() {
		ModelAndView model = new ModelAndView("ChangePassword");
		return model;
	}

	@PostMapping("/upload")
	public String handleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("catName") String catName) {
		String cat_flg = "N";
		String message1 = "File uploaded successfully!!";
		String message2 = "File uploaded Failed!!";
		String fileName = rand.nextInt(60000) + file.getOriginalFilename().replaceAll("\\s", "");
		Path fileNameAndPath1 = Paths.get(filelocation, fileName);
		System.out.println(fileName);
		System.out.println(catName);
		addCategoryDao.addCategories(cat_flg, fileName, catName);
		try {
			Files.write(fileNameAndPath1, file.getBytes());
		} catch (Exception e) {
			return message2;
		}
		return message1;
	}

	@GetMapping("/getdatatable")
	public List<CategoryBeanDTO> getTableData() throws UnsupportedEncodingException, IOException {
		List<CategoryBeanDTO> listoftbl = new ArrayList<>();
		List<CategoryBean> categaries = sellerservice.getCategorylist();
		if (categaries.size() > 0) {
			for (CategoryBean cat : categaries) {
				CategoryBeanDTO dto = new CategoryBeanDTO();
				dto.setCATEGORYID(cat.getCATEGORYID());
				dto.setCATEGORY_NAME(cat.getCATEGORY_NAME());
				dto.setCATEGORY_IMG(cat.getCATEGORY_IMG());
				dto.setCATEGORY_Flag(cat.getCATEGORY_Flag());
				listoftbl.add(dto);
			}
		}
		System.out.println("Table Data list :" + listoftbl);
		return listoftbl;
	}

	@PostMapping("/getflgdata")
	public int getFlagData(@RequestParam String CATEGORYID) {
		int flag;
		flag = addCategoryDao.getflag(CATEGORYID);
		return flag;
	}

	@PostMapping("/editupdate")
	public String editFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("catName") String catName,
			@RequestParam("srNo") String srNo) {
		String cat_flg = "N";
		String message1 = "File uploaded successfully!!";
		String message2 = "File uploaded Failed!!";
		String fileName = rand.nextInt(60000) + file.getOriginalFilename().replaceAll("\\s", "");
		Path fileNameAndPath1 = Paths.get(filelocation, fileName);
		addCategoryDao.updateCategories(cat_flg,fileName,catName,srNo);
		try {
			Files.write(fileNameAndPath1, file.getBytes());
//	      return ResponseEntity.status(HttpStatus.CREATED).body("File uploaded successfully.");

		} catch (Exception e) {
//	      return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
			return message2;
		}
//	    System.out.println(message1);
//	    return ResponseEntity.ok(message1);
		return message1;
	}

	@PostMapping("/getDelete")
	public int getDelData(@RequestParam String CATEGORYID) {
		int flag;
		flag = addCategoryDao.getDelVal(CATEGORYID);
		return flag;
	}

	@GetMapping("/getcatnm")
	public List<String> getCategoriesNm() {
		List<String> listofcatnm = new ArrayList<String>();
		listofcatnm = addCategoryDao.getcatName();
		System.out.println("cat name list :" + listofcatnm);
		return listofcatnm;
	}

	@PostMapping("/subupload")
	public String SubFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("subcatName") String subcatName,
			@RequestParam("categoryId") int categoryId) {
		String cat_flg = "N";
		String message1 = "File uploaded successfully!!";
		String message2 = "File uploaded Failed!!";
		String fileName = rand.nextInt(60000) + file.getOriginalFilename().replaceAll("\\s", "");
		Path fileNameAndPath1 = Paths.get(filelocation, fileName);
		addCategoryDao.addSubCategories(fileName, subcatName, categoryId);
		try {
			Files.write(fileNameAndPath1, file.getBytes());
//    return ResponseEntity.status(HttpStatus.CREATED).body("File uploaded successfully.");

		} catch (Exception e) {
//    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
			return message2;
		}
		return message1;
	}

	@GetMapping("/getSubdatatable")
	public List<SubCategoryBeanDTO> getSubTableData() throws UnsupportedEncodingException {
		List<SubCategoryBean> sublist = sellerservice.getAllSubCategorylist();
		List<SubCategoryBeanDTO> sublistDto = new ArrayList<>();
		if (sublist.size() > 0) {
			for (SubCategoryBean subcat : sublist) {
				SubCategoryBeanDTO dto = new SubCategoryBeanDTO();
				dto.setSUB_CATEGORY_ID(subcat.getSUB_CATEGORY_ID());
				dto.setSUB_CATEGORY_NAME(subcat.getSUB_CATEGORY_NAME());
				dto.setSUB_CATEGORY_IMG(subcat.getSUB_CATEGORY_IMG());
				dto.setSUB_CATEGORY_FLG(subcat.getSUB_CATEGORY_FLG());
				dto.setCATEGORY_ID(subcat.getCATEGORY_ID());
				sublistDto.add(dto);
			}
		}
		System.out.println("Sub Category Data list :" + sublistDto);
		return sublistDto;
	}

	@PostMapping("/getapprovedata")
	public int getApproveData(@RequestParam String SUB_CATEGORY_ID) {
		int flag;
		flag = addCategoryDao.getApproveflag(SUB_CATEGORY_ID);
		return flag;
	}

	@PostMapping("/getSubEdit")
	public String editSubFileUpload(@RequestParam("file") MultipartFile file,
			@RequestParam("subcatname") String subcatval, @RequestParam("srnum") String srnoval) {
		String cat_flg = "N";
		String message1 = "File uploaded successfully!!";
		String message2 = "File uploaded Failed!!";
		String fileName = rand.nextInt(60000) + file.getOriginalFilename().replaceAll("\\s", "");
		Path fileNameAndPath1 = Paths.get(filelocation, fileName);
		addCategoryDao.editSubCategories(cat_flg,fileName,subcatval,srnoval);
		try {
			Files.write(fileNameAndPath1, file.getBytes());
//    return ResponseEntity.status(HttpStatus.CREATED).body("File uploaded successfully.");

		} catch (Exception e) {
//    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
			return message2;
		}
//  System.out.println(message1);
//  return ResponseEntity.ok(message1);
		return message1;
	}

	@PostMapping("/getSubDelete")
	public int getSubDelData(@RequestParam String SUB_CATEGORY_ID) {
		int flag;
		flag = addCategoryDao.getSubDelVal(SUB_CATEGORY_ID);
		return flag;
	}

// Micro Category program started here.....
	@PostMapping("/microcatupload")
	public String MicroFileUpload(@RequestParam("file") MultipartFile file,
			@RequestParam("microcatName") String microcatName,
			@RequestParam("selectSubCategory") int selectSubcategory) {
		String cat_flg = "N";
		String message1 = "File uploaded successfully!!";
		String message2 = "File uploaded Failed!!";
		String fileName = rand.nextInt(60000) + file.getOriginalFilename().replaceAll("\\s", "");
		Path fileNameAndPath1 = Paths.get(filelocation, fileName);
		System.out.println(fileName);
		System.out.println(microcatName);
		System.out.println(selectSubcategory);
		addCategoryDao.addMicroCategories(fileName, microcatName, selectSubcategory);
		try {
			Files.write(fileNameAndPath1, file.getBytes());
//    return ResponseEntity.status(HttpStatus.CREATED).body("File uploaded successfully.");

		} catch (Exception e) {
//    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
			return message2;
		}
		return message1;
	}

	@GetMapping("/getsubcatnm")
	public List<String> getSubCategoriesNm() {
		List<String> listofsubcatnm = new ArrayList<String>();
		listofsubcatnm = addCategoryDao.getSubcatName();
		System.out.println("cat name list :" + listofsubcatnm);
		return listofsubcatnm;
	}

	@GetMapping("/getMicrodatatable")
	public List<MicroCategoryBeanDTO> getMicroTableData() throws UnsupportedEncodingException {
		List<Map<String, Object>> listoftbl = new ArrayList<>();
		List<MicroCategoryBean> microlist = sellerservice.getAllMicroCategorylist();
		List<MicroCategoryBeanDTO> microlistDto = new ArrayList<>();
		if (microlist.size() > 0) {
			for (MicroCategoryBean microcat : microlist) {
				MicroCategoryBeanDTO dto = new MicroCategoryBeanDTO();
	     		dto.setSUB_CATEGORY_ID(microcat.getMICRO_CATEGORY_ID());
				dto.setMICRO_CATEGORY_IMG(microcat.getMICRO_CATEGORY_IMG());
				dto.setMICRO_CATEGORY_FLG(microcat.getMICRO_CATEGORY_FLG());
				dto.setMICRO_CATEGORY_NAME(microcat.getMICRO_CATEGORY_NAME());
				dto.setMICRO_CATEGORY_ID(microcat.getMICRO_CATEGORY_ID());
				microlistDto.add(dto);
			}
		}
		System.out.println("Micro Category Data list :" + microlistDto);
		return microlistDto;
	}

	@PostMapping("/getMicroApprove")
	public int getMicroApproveData(@RequestParam String MICRO_CATEGORY_ID) {
		int flag;
		flag = addCategoryDao.getMicroApproveflag(MICRO_CATEGORY_ID);
		return flag;
	}

	@PostMapping("/getMicroDelete")
	public int getMicroDelData(@RequestParam String MICRO_CATEGORY_ID) {
		int flag;
		flag = addCategoryDao.getMicroDelVal(MICRO_CATEGORY_ID);
		return flag;
	}

	@GetMapping("/getUnApprovedProduct")
	public ResponseEntity<List<ProductBean>> getUnApprovedProduct(HttpServletRequest req) {
		List<ProductBean> products = null;
		if (req.getSession().getAttribute("usertype") != null
				&& String.valueOf(req.getSession().getAttribute("usertype")).equals("admin")) {
			products = adminDao.getlistOfUnapprovedProducts();
		}
		return new ResponseEntity<List<ProductBean>>(products, HttpStatus.OK);

	}

	@GetMapping("/getUnApprovedQuotes")
	public ResponseEntity<List<QuotationBean>> getUnApprovedQuotes(HttpServletRequest req) {
		List<QuotationBean> quotations = null;
		if (req.getSession().getAttribute("usertype") != null
				&& String.valueOf(req.getSession().getAttribute("usertype")).equals("admin")) {
			quotations = adminDao.getUnApprovedCustomerQuote();
		}
		return new ResponseEntity(quotations, HttpStatus.OK);
	}

	@GetMapping("/getListOfUsers")
	public ResponseEntity<List<UserDetail>> getListOfUsers(HttpServletRequest req) {
		List<UserDetail> users = null;
		if (req.getSession().getAttribute("usertype") != null
				&& String.valueOf(req.getSession().getAttribute("usertype")).equals("admin")) {
			users = adminDao.getListOfUsers();
		}
		return new ResponseEntity<List<UserDetail>>(users, HttpStatus.OK);
	}

	@GetMapping("/getListOfBuyers")
	public ResponseEntity<List<UserDetail>> getListOfBuyers(HttpServletRequest req) {
		List<UserDetail> users = null;
		if (req.getSession().getAttribute("usertype") != null
				&& String.valueOf(req.getSession().getAttribute("usertype")).equals("admin")) {
			users = adminDao.getListOfBuyers();
		}
		return new ResponseEntity<List<UserDetail>>(users, HttpStatus.OK);
	}

	@GetMapping("/getListOfSellers")
	public ResponseEntity<List<UserDetail>> getListOfSellers(HttpServletRequest req) {
		List<UserDetail> users = null;
		if (req.getSession().getAttribute("usertype") != null
				&& String.valueOf(req.getSession().getAttribute("usertype")).equals("admin")) {
			users = adminDao.getListOfsellers();
		}
		return new ResponseEntity<List<UserDetail>>(users, HttpStatus.OK);
	}

	@GetMapping("/getListOfAdmins")
	public ResponseEntity<List<UserDetail>> getListOfAdmins(HttpServletRequest req) {
		List<UserDetail> users = null;
		if (req.getSession().getAttribute("usertype") != null
				&& String.valueOf(req.getSession().getAttribute("usertype")).equals("admin")) {
			users = adminDao.getListOfAdmins();
		}
		return new ResponseEntity<List<UserDetail>>(users, HttpStatus.OK);
	}

	@GetMapping("/getAllProducts")
	public ResponseEntity<List<ProductBean>> getAllProducts(HttpServletRequest req) {
		List<ProductBean> products = null;
		if (req.getSession().getAttribute("usertype") != null
				&& String.valueOf(req.getSession().getAttribute("usertype")).equals("admin")) {
			products = adminDao.getAllProducts();
		}
		return new ResponseEntity<List<ProductBean>>(products, HttpStatus.OK);

	}

	@PutMapping("/toggelApproveStatus/{productId}")
	@ResponseBody
	public ResponseEntity<Integer> toggelApproveStatus(@PathVariable("productId") int productId, HttpServletRequest req) {
		if (req.getSession().getAttribute("userid") != null) {
			int count = adminDao.toggelApproveStatus(productId);
			System.out.println(count);
			return new ResponseEntity<Integer>(count, HttpStatus.OK);
		} else {
			return new ResponseEntity<Integer>(-1, HttpStatus.OK);
		}

	}
	
	@PutMapping("/usertoggelApproveStatus/{userid}")
	@ResponseBody
	public ResponseEntity<Integer> usertoggelApproveStatus(@PathVariable("userid") int userid, HttpServletRequest req) {
		if (req.getSession().getAttribute("userid") != null) {
			int count = adminDao.usertoggelApproveStatus(userid);
			System.out.println(count);
			return new ResponseEntity<Integer>(count, HttpStatus.OK);
		} else {
			return new ResponseEntity<Integer>(-1, HttpStatus.OK);
		}

	}
	
	@PutMapping("/quotetoggelApproveStatus/{quoteid}")
	@ResponseBody
	public ResponseEntity<Integer> quotetoggelApproveStatus(@PathVariable("quoteid") int quoteid, HttpServletRequest req) {
		if (req.getSession().getAttribute("userid") != null) {
			int count = adminDao.quotetoggelApproveStatus(quoteid);
			System.out.println(count);
			return new ResponseEntity<Integer>(count, HttpStatus.OK);
		} else {
			return new ResponseEntity<Integer>(-1, HttpStatus.OK);
		}

	}
	
	@DeleteMapping("/deleteuser/{userId}")
	@ResponseBody
	public ResponseEntity<Integer> deleteProductById(@PathVariable("userId") int userId, HttpServletRequest req) {
		if (req.getSession().getAttribute("userid") != null) {
			int count = adminDao.deleteUserById(userId);
			System.out.println(count);
			return new ResponseEntity<Integer>(count, HttpStatus.OK);
		} else {
			return new ResponseEntity<Integer>(-1, HttpStatus.OK);
		}

	}
	
	@DeleteMapping("/deletequote/{quoteid}")
	@ResponseBody
	public ResponseEntity<Integer> deleteQuoteById(@PathVariable("quoteid") int quoteid, HttpServletRequest req) {
		if (req.getSession().getAttribute("userid") != null) {
			int count = adminDao.deleteQuoteById(quoteid);
			System.out.println(count);
			return new ResponseEntity<Integer>(count, HttpStatus.OK);
		} else {
			return new ResponseEntity<Integer>(-1, HttpStatus.OK);
		}

	}

}
