package com.qraAdmin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class LoginDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
    public List<Map<String, Object>> demo(){
    	//JdbcTemplate jdbcTemplate = new JdbcTemplate();
	String query ="select * from qralink.qra_credential;";
	System.out.println("sdasdsadasdasdsadsa"+jdbcTemplate.queryForList(query));
	return jdbcTemplate.queryForList(query);
}
}
