package com.qraAdmin.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Locale.Category;
import java.util.Random;

import javax.imageio.ImageIO;

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

import com.qraAdmin.DTO.ProductBeanDTO;
import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.MicroCategoryBean;
import com.qraAdmin.model.ProductBean;
import com.qraAdmin.model.QuotationBean;
import com.qraAdmin.model.SubCategoryBean;
import com.qraAdmin.model.UserDetail;
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

//	@GetMapping("/CompanyProfile")
//	public ModelAndView CompanyProfile() {
//		ModelAndView model = new ModelAndView("CmpProfile");
//		return model;
//	}

//	@GetMapping("/homepage")
//	public ModelAndView CompanyProfile2() {
//		ModelAndView model = new ModelAndView("homePage");
//		return model;
//	}

//	@GetMapping("/homepage")
//	public ModelAndView CompanyProfile1() {
//		ModelAndView model = new ModelAndView("homePage");
//		return model;
//	}

	@GetMapping("/tradeproduct")
	public ModelAndView TradeAndProduct() {
		ModelAndView model = new ModelAndView("TradeNdProductMain");
		return model;
	}

	@GetMapping("/sellerPage")
	public ModelAndView sellerPage(HttpServletRequest req) {
		ModelAndView model = null;
		int userid = 0;
		String usertype = null;
		HttpSession session = req.getSession();
		Object id = session.getAttribute("userid");
		Object type = session.getAttribute("usertype");
		System.out.println(id+""+type);
		if (id != null && type != null) {
			userid = Integer.parseInt(String.valueOf(session.getAttribute("userid")));
			usertype = String.valueOf(session.getAttribute("usertype"));
		}
		if (userid > 0 && usertype != null && usertype.equals("seller")) {
			model = new ModelAndView("Home");
		} else {
			model = new ModelAndView("loginpage");
		}
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
	@GetMapping("/productList")
	public ModelAndView productList() {
		ModelAndView model = new ModelAndView("productList");
		return model;
	}
	@PostMapping("/addProduct")
	public ModelAndView addproduct(HttpServletRequest request, @RequestParam("image1") MultipartFile image1,
			@RequestParam("image2") MultipartFile image2) {
		HttpSession session = request.getSession();
		ModelAndView model = null;
		int userid = 0;
		String usertype = null;
		Object id = session.getAttribute("userid");
		Object type = session.getAttribute("usertype");
		if (id != null && type != null) {
			userid = Integer.parseInt(String.valueOf(session.getAttribute("userid")));
			usertype = String.valueOf(session.getAttribute("usertype"));
		}
		if (userid > 0 && usertype != null && usertype.equals("seller")) {

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
				fileNameAndPath1 = Paths.get("D:\\qrapics",
						"image1" + rand.nextInt(60000) + image1.getOriginalFilename().replaceAll("\\s", ""));
			}
			if (!image2.isEmpty()) {
				fileNameAndPath2 = Paths.get("D:\\qrapics",
						"image2" + rand.nextInt(60000) + image2.getOriginalFilename().replaceAll("\\s", ""));
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
					imagePath2, userid, "N");
			System.out.println("count " + userservice.addProduct(product));

			return new ModelAndView("addproduct");

		} else {
			return new ModelAndView("loginpage");
		}
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
	@GetMapping("/getImageByte/{image1}/{image2}")
	@ResponseBody
	public ResponseEntity<List<byte[]>> getImageByte(@PathVariable("image1") String image1,@PathVariable("image2") String image2) {
		byte[] imagebyte1;
		byte[] imagebyte2;
		List<byte[]> bytearray=new ArrayList<>();
		System.out.println(image1+"   "+image2);
		try {
			imagebyte1 = Files.readAllBytes(Paths.get(image1));
			imagebyte2 = Files.readAllBytes(Paths.get(image2));
			bytearray.add(imagebyte1);
			bytearray.add(imagebyte2);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return new ResponseEntity<List<byte[]>>(bytearray, HttpStatus.OK);
	}
	@GetMapping("/getmicrocategories/{subcategoryid}")
	@ResponseBody
	public ResponseEntity<List<MicroCategoryBean>> getMicroCategories(@PathVariable("subcategoryid") String subcatid) {
		List l = new ArrayList();
		List<MicroCategoryBean> microcategories = sellerservice.getMicroCategorylist(Integer.parseInt(subcatid));
		System.out.println(microcategories);
		return new ResponseEntity<List<MicroCategoryBean>>(microcategories, HttpStatus.OK);
	}

	@GetMapping("/getUserDetail")
	@ResponseBody
	public ResponseEntity<UserDetail> getUserDetail(HttpServletRequest req) {
		String userId = (String) req.getSession().getAttribute("userid");
		UserDetail userdetail = sellerservice.getUserDetail(Integer.parseInt("2"));
		System.out.println(userdetail);
		return new ResponseEntity<UserDetail>(userdetail, HttpStatus.OK);
	}

	@GetMapping("/getProductListOfCurrentUser")
	@ResponseBody
	public ResponseEntity<List<ProductBeanDTO>> getProductListofCurrentUser(HttpServletRequest req) throws IOException {
		HttpSession ses=req.getSession();
		List<ProductBeanDTO> productdtos=new ArrayList<>();
		System.out.println(ses.getAttribute("userid"));
		if (ses.getAttribute("userid") != null) {
			String userId = String.valueOf(ses.getAttribute("userid"));
			List<ProductBean> productList = sellerservice.getProductListOfCurrentUser(Integer.parseInt(userId));
			System.out.println(productList);
			for(ProductBean prod:productList) {
				ProductBeanDTO dto=new ProductBeanDTO();
				System.out.println(prod.getPic1());
				System.out.println(prod.getPic2());
				if(prod.getPic1()!=null||!prod.getPic1().isEmpty()) {
					dto.setPic1(getbyte(prod.getPic1()));
					dto.setImage1encode64(convertIntoBase64(dto.getPic1()));
				}
				if(prod.getPic2()!=null||!prod.getPic2().isEmpty()) {
					dto.setPic2(getbyte(prod.getPic2()));
					dto.setImage2encode64(convertIntoBase64(dto.getPic2()));
				}
				dto.setBrandName(prod.getBrandName());
				dto.setCategoryId(prod.getCategoryId());
				dto.setColor(prod.getColor());
				dto.setMaterial(prod.getMaterial());
				dto.setMicroCategoryId(prod.getMicroCategoryId());
				dto.setModelnumber(prod.getModelnumber());
				dto.setOrderqnt(prod.getOrderqnt());
				dto.setProductdesc(prod.getProductdesc());
				dto.setProductId(prod.getProductId());
				dto.setProductlive(prod.getProductlive());
				dto.setProductName(prod.getProductName());
				dto.setProductPrice(prod.getProductPrice());
				dto.setShape(prod.getShape());
				dto.setSubCategoryId(prod.getSubCategoryId());
				dto.setUserid(prod.getUserid());
				dto.setUses(prod.getUses());
				dto.setWeight(prod.getWeight());
				
				productdtos.add(dto);
			}
			System.out.println("product dto "+productdtos);
			return new ResponseEntity<List<ProductBeanDTO>>(productdtos, HttpStatus.OK);
		} else {
			return null;
		}
	}
	
	@GetMapping("/availableApprovedCustomerQuote")
	@ResponseBody
	public ResponseEntity<List<QuotationBean>> getAvailableApprovedCustomerQuote() {
			List<QuotationBean> quotations = sellerservice.getAvailableApprovedCustomerQuote();
			System.out.println(quotations);
			return new ResponseEntity<List<QuotationBean>>(quotations, HttpStatus.OK);
		
	}
	
	public byte[] getbyte(String path) throws IOException {
		BufferedImage bufferimage = ImageIO.read(new File(path));
	      ByteArrayOutputStream output = new ByteArrayOutputStream();
	      ImageIO.write(bufferimage, "jpg", output );
	      byte [] data = output.toByteArray();
	      return data;
	}
	
    public String convertIntoBase64(byte[] bytes) throws UnsupportedEncodingException{
    	byte[] encodeBase64 = Base64.getEncoder().encode(bytes);
        String base64Encoded = new String(encodeBase64, "UTF-8");
        return base64Encoded;
	}
}
