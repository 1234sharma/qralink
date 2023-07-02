package com.qraAdmin.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.qraAdmin.model.UserDetail;

public class UserDetailRowMapper implements RowMapper<UserDetail> {

	@Override
	public UserDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		UserDetail user=new UserDetail();
		user.setUserid(rs.getInt("userid"));
		user.setUsername(rs.getString("username"));
		user.setMobile(rs.getString("mobile"));
		user.setCompanyname(rs.getString("companyname"));
		user.setEmail(rs.getString("email"));
		user.setCountry(rs.getString("country"));
		user.setState(rs.getString("state"));
		user.setCity(rs.getString("city"));
		user.setPass(rs.getString("pass"));
		user.setUsertype(rs.getString("usertype"));
		
		return user;
	}

}
