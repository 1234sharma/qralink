package com.qraAdmin.service;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.List;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.qraAdmin.DTO.ProductBeanDTO;
import com.qraAdmin.dao.SellerDao;
import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.MicroCategoryBean;
import com.qraAdmin.model.ProductBean;
import com.qraAdmin.model.QuotationBean;
import com.qraAdmin.model.SubCategoryBean;
import com.qraAdmin.model.UserDetail;

@Service
public class SellerService {

	@Value("${image.store.path}")
	private String filelocation;

	@Autowired
	SellerDao sellerdao;

	public List<CategoryBean> getCategorylist() {

		List<CategoryBean> categaries = sellerdao.getCategorylist();

		return categaries;
	}

	public List<SubCategoryBean> getSubCategorylist(int categoryId) {

		List<SubCategoryBean> subcategories = sellerdao.getSubCategorylist(categoryId);

		return subcategories;
	}

	public List<SubCategoryBean> getMicroCategorylistbyCategoryId(int subcategoryId) {

		List<SubCategoryBean> subcategories = sellerdao.getSubCategorylist(subcategoryId);

		return subcategories;
	}

	public List<SubCategoryBean> getAllSubCategorylist() {

		List<SubCategoryBean> subcategories = sellerdao.getAllSubCategorylist();

		return subcategories;
	}

	public List<MicroCategoryBean> getMicroCategorylist(int subcategoryId) {

		List<MicroCategoryBean> microcategories = sellerdao.getMicroCategorylist(subcategoryId);

		return microcategories;
	}

	public List<MicroCategoryBean> getAllMicroCategorylist() {

		List<MicroCategoryBean> microcategories = sellerdao.getAllMicroCategorylist();

		return microcategories;
	}

	public UserDetail getUserDetail(int userId) {

		UserDetail userDetail = sellerdao.getUserDetail(userId);

		return userDetail;
	}

	public List<ProductBean> getProductListOfCurrentUser(int userId) {

		List<ProductBean> productlist = sellerdao.getProductList(userId);

		return productlist;
	}

	public ProductBean getProductByProductId(int productid) {

		ProductBean product = sellerdao.getProductByProductId(productid);

		return product;
	}

	public List<QuotationBean> getAvailableApprovedCustomerQuote() {

		List<QuotationBean> quotationlist = sellerdao.getAvailableApprovedCustomerQuote();

		return quotationlist;
	}

	public List<QuotationBean> getMyQuotes(int userId) {

		List<QuotationBean> quotationlist = sellerdao.getMyQuotes(userId);

		return quotationlist;
	}

	public int deleteProductById(int productId) {

		int count = sellerdao.deleteProductById(productId);

		return count;
	}

	public byte[] getbyte(String path) {
		System.out.println(filelocation + "\\" + path);
		try {
			BufferedImage bufferimage = ImageIO.read(new File(filelocation + "\\" + path));
			ByteArrayOutputStream output = new ByteArrayOutputStream();
			ImageIO.write(bufferimage, "png", output);
			byte[] data = output.toByteArray();
			System.out.println(data.length);
			return data;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}

	public String convertIntoBase64(byte[] bytes) throws UnsupportedEncodingException {
		if (bytes != null) {
			byte[] encodeBase64 = Base64.getEncoder().encode(bytes);
			String base64Encoded = new String(encodeBase64, "UTF-8");
			return base64Encoded;
		}
		return "";
	}

	public ProductBeanDTO productBeanDTOConvert(ProductBean prod) throws IOException {
		ProductBeanDTO dto = new ProductBeanDTO();
		// System.out.println(prod.getPic1());
		// System.out.println(prod.getPic2());
//		if (prod.getPic1() != null || !prod.getPic1().isEmpty()) {
//			dto.setPic1(getbyte(prod.getPic1()));
//			dto.setImage1encode64(convertIntoBase64(dto.getPic1()));
//		}
//		if (!prod.getPic2().trim().isEmpty()) {
//			dto.setPic2(getbyte(prod.getPic2()));
//			dto.setImage2encode64(convertIntoBase64(dto.getPic2()));
//		}
		dto.setPic1(prod.getPic1());
		dto.setPic2(prod.getPic2());
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

		return dto;
	}

	public List<ProductBean> getproductByCategoryId(int categoryId) {

		List<ProductBean> products = sellerdao.getProductByCategoryId(categoryId);

		return products;
	}

	public List<ProductBean> getproductBySubCategoryId(int subcategoryId) {

		List<ProductBean> products = sellerdao.getProductBySubCategoryId(subcategoryId);

		return products;
	}
	public List<ProductBean> getproductByMicroCategoryId(int microcategoryid) {

		List<ProductBean> products = sellerdao.getProductByMicroCategoryId(microcategoryid);

		return products;
	}
	public CategoryBean getCategoryByCategoryId(int categoryId) {

		CategoryBean cat = sellerdao.getCategoryByCategoryId(categoryId);

		return cat;
	}

	public SubCategoryBean getSubCategoryBySubCategoryId(int subcategoryId) {

		SubCategoryBean subcat = sellerdao.getSubCategoryBySubCategoryId(subcategoryId);

		return subcat;
	}
	
	public MicroCategoryBean getMicroCategoryByMicroategoryId(int microcategoryId) {

		MicroCategoryBean microcat = sellerdao.getMicroCategoryByMicroategoryId(microcategoryId);

		return microcat;
	}
	
	
	
	
	

}
