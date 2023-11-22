package com.qraAdmin.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AddCategoryDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
//	String id ="4";
	public void addCategories(String cat_flg, String fileName, String catName) {
		// TODO Auto-generated method stub
		int count=0;
		 System.out.println("Inside service function");
		 System.out.println(cat_flg);
		 System.out.println(fileName);
		 System.out.println(catName);
		 
//		 String query="INSERT INTO qralink.category VALUES('"+id+"','"+catName+"','"+fileName+"','"+cat_flg+"')";
		 
		 String query	= "INSERT INTO qralink.category (CATEGORY_NAME, CATEGORY_IMG, CATEGORY_FLAG) VALUES (?, ?, ?)";
	      //Creating a PreparedStatement object
		 count= jdbcTemplate.update(query,catName,fileName,cat_flg);
		 System.out.println("Query is:"+query);
		 System.out.println("count is:"+count);
		 
	}
	public List<Map<String, Object>> getAllData() {
		List<Map<String, Object>> tbldatalist = new ArrayList<>();
		String query="select CATEGORYID,CATEGORY_NAME,CATEGORY_IMG,CATEGORY_Flag from qralink.category";
		tbldatalist = jdbcTemplate.queryForList(query);
		return tbldatalist;
	}
	public int getflag(String cATEGORYID) {
		int flgval=0;
		String query="update qralink.category set category_flag='Y' where categoryid="+cATEGORYID;
		flgval= jdbcTemplate.update(query);
		System.out.println("count update row :"+flgval);
		return flgval;
	}
	public void updateCategories(String cat_flg, String fileName, String catName, String srNo) {
		int count=0;
		 System.out.println("Inside service function");
		 System.out.println(cat_flg);
		 System.out.println(fileName);
		 System.out.println(catName);
		 System.out.println(srNo);
		 
		 
//		 String query="INSERT INTO qralink.category VALUES('"+id+"','"+catName+"','"+fileName+"','"+cat_flg+"')";
		 
		 String query = "update qralink.category set CATEGORY_NAME='"+catName+"', CATEGORY_IMG ='"+fileName+"' where categoryid="+srNo;
	      //Creating a PreparedStatement object
		 count= jdbcTemplate.update(query);
		 System.out.println("Query is:"+query);
		 System.out.println("count is:"+count);
		
	}
	public int getDelVal(String cATEGORYID) {
		int delval=0;
		String query="delete from qralink.category where categoryid ="+cATEGORYID;
		delval= jdbcTemplate.update(query);
		System.out.println("Delete row count  :"+delval);
		return delval;
	}
	public List<String> getcatName() {
		List<String> catnmlist = new ArrayList<String>();
		String query="SELECT CATEGORY_NAME FROM qralink.category";
		catnmlist = jdbcTemplate.queryForList(query,String.class);
		return catnmlist;
	}
	public void addSubCategories(String fileName, String subcatName, String categoryName) {
		int count=0;
		String subflg="N";
		 String query	= "INSERT INTO qralink.subcategory (SUB_CATEGORY_NAME, CATEGORY_NAME, SUB_CATEGORY_IMG, SUB_CATEGORY_FLG) VALUES (?, ?, ?,?)";
	      //Creating a PreparedStatement object
		 count= jdbcTemplate.update(query,subcatName,categoryName,fileName,subflg);
		 System.out.println("SUB Query is:"+query);
		 System.out.println("count is:"+count);
		 
		
	}
	public List<Map<String, Object>> getSubAllData() {
		List<Map<String, Object>> subcatdata = new ArrayList<>();
		String query="select SUB_CATEGORY_ID,SUB_CATEGORY_NAME,SUB_CATEGORY_IMG,SUB_CATEGORY_FLG from qralink.subcategory";
		subcatdata = jdbcTemplate.queryForList(query);
		return subcatdata;
	}
	
	public int getApproveflag(String SUB_CATEGORY_ID) {
		int flgval=0;
		String query="update qralink.subcategory set SUB_CATEGORY_FLG='Y' where SUB_CATEGORY_ID="+SUB_CATEGORY_ID;
		flgval= jdbcTemplate.update(query);
		System.out.println("count update flag row :"+flgval);
		return flgval;
	}
	
	public void editSubCategories(String cat_flg, String fileName, String subcatval, String srnoval) {
		int count=0;
		 System.out.println("Inside service function");
		 System.out.println(cat_flg);
		 System.out.println(fileName);
		 System.out.println(subcatval);
		 System.out.println(srnoval);
		 
		 
//		 String query="INSERT INTO qralink.category VALUES('"+id+"','"+catName+"','"+fileName+"','"+cat_flg+"')";
		 
		 String query = "update qralink.subcategory set SUB_CATEGORY_NAME='"+subcatval+"', SUB_CATEGORY_IMG ='"+fileName+"' where SUB_CATEGORY_ID="+srnoval;
	      //Creating a PreparedStatement object
		 count= jdbcTemplate.update(query);
		 System.out.println("Query is:"+query);
		 System.out.println("count is:"+count);
		
	}
	
	public int getSubDelVal(String sUB_CATEGORY_ID) {
		int delval=0;
		String query="delete from qralink.subcategory where SUB_CATEGORY_ID ="+sUB_CATEGORY_ID;
		delval= jdbcTemplate.update(query);
		System.out.println("Delete sub cat row count  :"+delval);
		return delval;
	}
	
	
	public void addMicroCategories(String fileName, String microcatName, String selectSubcategory) {
		int count=0;
		String subflg="N";
		 String query	= "INSERT INTO qralink.microcategory (MICRO_CATEGORY_NAME, SUB_CATEGORY_NAME, MICRO_CATEGORY_IMG, MICRO_CATEGORY_FLG) VALUES (?, ?, ?,?)";
	      //Creating a PreparedStatement object
		 count= jdbcTemplate.update(query,microcatName,selectSubcategory,fileName,subflg);
		 System.out.println("Microcategory Query is:"+query);
		 System.out.println("count is:"+count);
		
	}
	
	public List<String> getSubcatName() {
		List<String> subcatnmlist = new ArrayList<String>();
		String query="SELECT SUB_CATEGORY_NAME FROM qralink.subcategory";
		subcatnmlist = jdbcTemplate.queryForList(query,String.class);
		return subcatnmlist;
	}
	public List<Map<String, Object>> getMicroAllData() {
		List<Map<String, Object>> microcatdata = new ArrayList<>();
		String query="select MICRO_CATEGORY_ID,MICRO_CATEGORY_NAME,MICRO_CATEGORY_IMG,MICRO_CATEGORY_FLG from qralink.microcategory";
		microcatdata = jdbcTemplate.queryForList(query);
		return microcatdata;
	}
	public int getMicroApproveflag(String mICRO_CATEGORY_ID) {
		int flgval=0;
		String query="update qralink.microcategory set MICRO_CATEGORY_FLG='Y' where MICRO_CATEGORY_ID="+mICRO_CATEGORY_ID;
		flgval= jdbcTemplate.update(query);
		System.out.println("count update micro flag row :"+flgval);
		return flgval;
	}
	public int getMicroDelVal(String mICRO_CATEGORY_ID) {
		int delval=0;
		String query="delete from qralink.microcategory where MICRO_CATEGORY_ID ="+mICRO_CATEGORY_ID;
		delval= jdbcTemplate.update(query);
		System.out.println("Delete micro cat row count  :"+delval);
		return delval;
	}
	public List<Map<String, Object>> getTradeData() {
		List<Map<String, Object>> tradeCatList= new ArrayList<>();
		String query="SELECT CATEGORY_NAME,CATEGORY_IMG FROM QRALINK.CATEGORY";
		tradeCatList = jdbcTemplate.queryForList(query);
		return tradeCatList;
	}
	public List<Map<String, Object>> getSubTradeData() {
		// TODO Auto-generated method stub
		return null;
	}



}
