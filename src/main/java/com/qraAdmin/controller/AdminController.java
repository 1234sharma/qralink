package com.qraAdmin.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.qraAdmin.dao.AddCategoryDao;


@RestController
public class AdminController {
	//for supply and product we use below jsp three time 

	@Value("${image.store.path}")
	private String filelocation;
	
	@Autowired
	AddCategoryDao addCategoryDao;
	
	@GetMapping("/dashboard")
	public ModelAndView categories() {
		ModelAndView model = new ModelAndView("Dashboard1");
		return model;
	}
	
	@GetMapping("/editcategories")
	public ModelAndView Tradecategories() {
		ModelAndView model = new ModelAndView("EditPage");
		return model;
	}
	
	//classified categories there is one more jsp use for Classified Sub Category(Used Packaging Machine) as shown below
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
	  public String handleFileUpload( @RequestParam("file") MultipartFile file,@RequestParam("catName") String catName) {
		String cat_flg ="N";
		String message1="File uploaded successfully!!";
		String message2="File uploaded Failed!!";
	    String fileName = file.getOriginalFilename();
	    System.out.println(fileName);
	    System.out.println(catName);
	    addCategoryDao.addCategories(cat_flg,fileName,catName);
	    try {
	    	 file.transferTo( new File(filelocation + fileName));
//	      return ResponseEntity.status(HttpStatus.CREATED).body("File uploaded successfully.");
	      
	    } catch (Exception e) {
//	      return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	    	return message2;
	    }
//	    System.out.println(message1);
//	    return ResponseEntity.ok(message1);
	    return message1;
	  }
	
	@GetMapping("/getdatatable")
	public List<Map<String, Object>> getTableData(){
	List<Map<String, Object>> listoftbl = new ArrayList<>();
	listoftbl = addCategoryDao.getAllData();
	System.out.println("Table Data list :"+listoftbl);
	return listoftbl;
	}
	
	@PostMapping("/getflgdata")
	public int getFlagData(@RequestParam String CATEGORYID) {
		int flag;
		flag= addCategoryDao.getflag(CATEGORYID);
		return flag;
	}

	@PostMapping("/editupdate") 
	  public String editFileUpload( @RequestParam("file") MultipartFile file,@RequestParam("catName") String catName,@RequestParam("srNo") String srNo) {
		String cat_flg ="N";
		String message1="File uploaded successfully!!";
		String message2="File uploaded Failed!!";
	    String fileName = file.getOriginalFilename();
	    System.out.println(fileName);
	    System.out.println(catName);
	    addCategoryDao.updateCategories(cat_flg,fileName,catName,srNo);
	    try {
	    	 file.transferTo( new File(filelocation + fileName));
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
	flag= addCategoryDao.getDelVal(CATEGORYID);
	return flag;
}

@GetMapping("/getcatnm")
public List<String> getCategoriesNm(){
	List<String> listofcatnm = new ArrayList<String>();
	listofcatnm = addCategoryDao.getcatName();
	System.out.println("cat name list :"+listofcatnm);
	return listofcatnm;
}

@PostMapping("/subupload") 
public String SubFileUpload( @RequestParam("file") MultipartFile file,@RequestParam("subcatName") String subcatName,@RequestParam("categoryName") String categoryName) {
	String cat_flg ="N";
	String message1="File uploaded successfully!!";
	String message2="File uploaded Failed!!";
  String fileName = file.getOriginalFilename();
  System.out.println(fileName);
  System.out.println(subcatName);
//  System.out.println(cat_name);
  System.out.println("categoryName:"+categoryName);
  addCategoryDao.addSubCategories(fileName,subcatName,categoryName);
  try {
  	 file.transferTo( new File("filelocation" + fileName));
//    return ResponseEntity.status(HttpStatus.CREATED).body("File uploaded successfully.");
    
  } catch (Exception e) {
//    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
  	return message2;
  }
  return message1;
}

@GetMapping("/getSubdatatable")
public List<Map<String, Object>> getSubTableData(){
List<Map<String, Object>> listoftbl = new ArrayList<>();
listoftbl = addCategoryDao.getSubAllData();
System.out.println("Sub Category Data list :"+listoftbl);
return listoftbl;
}

@PostMapping("/getapprovedata")
public int getApproveData(@RequestParam String SUB_CATEGORY_ID) {
	int flag;
	flag= addCategoryDao.getApproveflag(SUB_CATEGORY_ID);
	return flag;
}

@PostMapping("/getSubEdit") 
public String editSubFileUpload( @RequestParam("file") MultipartFile file,@RequestParam("subcatname") String subcatval,@RequestParam("srnum") String srnoval) {
	String cat_flg ="N";
	String message1="File uploaded successfully!!";
	String message2="File uploaded Failed!!";
  String fileName = file.getOriginalFilename();
  System.out.println(fileName);
  System.out.println(subcatval);
  addCategoryDao.editSubCategories(cat_flg,fileName,subcatval,srnoval);
  try {
  	 file.transferTo( new File(filelocation + fileName));
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
	flag= addCategoryDao.getSubDelVal(SUB_CATEGORY_ID);
	return flag;
}

// Micro Category program started here.....
@PostMapping("/microcatupload") 
public String MicroFileUpload( @RequestParam("file") MultipartFile file,@RequestParam("microcatName") String microcatName,@RequestParam("selectSubCategory") String selectSubcategory) {
	String cat_flg ="N";
	String message1="File uploaded successfully!!";
	String message2="File uploaded Failed!!";
  String fileName = file.getOriginalFilename();
  System.out.println(fileName);
  System.out.println(microcatName);
  System.out.println(selectSubcategory);
  addCategoryDao.addMicroCategories(fileName,microcatName,selectSubcategory);
  try {
  	 file.transferTo( new File("filelocation" + fileName));
//    return ResponseEntity.status(HttpStatus.CREATED).body("File uploaded successfully.");
    
  } catch (Exception e) {
//    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
  	return message2;
  }
  return message1;
}


@GetMapping("/getsubcatnm")
public List<String> getSubCategoriesNm(){
	List<String> listofsubcatnm = new ArrayList<String>();
	listofsubcatnm = addCategoryDao.getSubcatName();
	System.out.println("cat name list :"+listofsubcatnm);
	return listofsubcatnm;
}

@GetMapping("/getMicrodatatable")
public List<Map<String, Object>> getMicroTableData(){
List<Map<String, Object>> listoftbl = new ArrayList<>();
listoftbl = addCategoryDao.getMicroAllData();
System.out.println("Micro Category Data list :"+listoftbl);
return listoftbl;
}

@PostMapping("/getMicroApprove")
public int getMicroApproveData(@RequestParam String MICRO_CATEGORY_ID) {
	int flag;
	flag= addCategoryDao.getMicroApproveflag(MICRO_CATEGORY_ID);
	return flag;
}



@PostMapping("/getMicroDelete")
public int getMicroDelData(@RequestParam String MICRO_CATEGORY_ID) {
	int flag;
	flag= addCategoryDao.getMicroDelVal(MICRO_CATEGORY_ID);
	return flag;
}

}	

