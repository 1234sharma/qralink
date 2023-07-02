package com.qraAdmin.model;

public class UserDetail {

	int userid;
	String username;
	String mobile;
	String companyname;
	String email;
	String country;
	String state;
	String city;
	String pass;
	String usertype;

	public UserDetail() {

	}

	public UserDetail(int userid, String username, String email, String usertype) {
		super();
		this.userid = userid;
		this.username = username;
		this.email = email;
		this.usertype = usertype;
	}

	public UserDetail(int userid, String username, String mobile, String companyname, String email, String country,
			String state, String city, String pass, String usertype) {
		super();
		this.userid = userid;
		this.username = username;
		this.mobile = mobile;
		this.companyname = companyname;
		this.email = email;
		this.country = country;
		this.state = state;
		this.city = city;
		this.pass = pass;
		this.usertype = usertype;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	@Override
	public String toString() {
		return "UserDetail [userid=" + userid + ", username=" + username + ", mobile=" + mobile + ", companyname="
				+ companyname + ", email=" + email + ", country=" + country + ", state=" + state + ", city=" + city
				+ ", pass=" + pass + ", usertype=" + usertype + "]";
	}

}
