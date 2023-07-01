package com.qraAdmin.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.qraAdmin.model.CategoryBean;
import com.qraAdmin.model.MicroCategoryBean;
import com.qraAdmin.model.SubCategoryBean;

@Repository
public class SellerDao {

	@Autowired
	JdbcTemplate jdbc;

	public String getCategoryQuery = "select * from qralink.category";
    public String getSubCategoryQuery="SELECT * FROM qralink.subcategory where category_id=?";
    public String getMicroCategoryQuery="SELECT * FROM qralink.microcategory where SUB_CATEGORY_ID=?";
	public List<CategoryBean> getCategorylist() {
		List<Map<String, Object>> l = jdbc.queryForList(getCategoryQuery);
		List<CategoryBean> categories = new ArrayList<CategoryBean>();
		for (Map<String, Object> map : l) {
			CategoryBean cat = new CategoryBean(Integer.parseInt(map.get("CATEGORYID").toString()),
					map.get("CATEGORY_NAME").toString());
			categories.add(cat);
		}
		return categories;
	}
	
	public List<SubCategoryBean> getSubCategorylist(int categoryid) {
		List<Map<String, Object>> l = jdbc.queryForList(getSubCategoryQuery,categoryid);
		System.out.println(l);
		List<SubCategoryBean> subcategories = new ArrayList<SubCategoryBean>();
		for (Map<String, Object> map : l) {
			SubCategoryBean cat = new SubCategoryBean(Integer.parseInt(map.get("SUB_CATEGORY_ID").toString()),
					map.get("SUB_CATEGORY_NAME").toString(),Integer.parseInt(map.get("CATEGORY_ID").toString()));
			subcategories.add(cat);
		}
		return subcategories;
	}
	public List<MicroCategoryBean> getMicroCategorylist(int subcategoryid) {
		List<Map<String, Object>> l = jdbc.queryForList(getMicroCategoryQuery,subcategoryid);
		System.out.println(l);
		List<MicroCategoryBean> microcategories = new ArrayList<MicroCategoryBean>();
		for (Map<String, Object> map : l) {
			MicroCategoryBean cat = new MicroCategoryBean(Integer.parseInt(map.get("MICRO_CATEGORY_ID").toString()),
					map.get("MICRO_CATEGORY_NAME").toString(),Integer.parseInt(map.get("SUB_CATEGORY_ID").toString()));
			microcategories.add(cat);
		}
		return microcategories;
	}
	
}
