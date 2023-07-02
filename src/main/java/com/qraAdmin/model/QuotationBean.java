package com.qraAdmin.model;

public class QuotationBean {
	int quoteId;
	String product_name;
	int quantiry;
	String quantity_type;
	String email;
	String person_name;
	String company_name;
	String mobile;
	String is_approved;
	int userid;

	public QuotationBean() {
		super();
	}

	public QuotationBean(String product_name, int quantity, String quantity_type, String email, String person_name,
			String company_name, String mobile, int userid, String is_approved) {
		super();
		this.product_name = product_name;
		this.quantiry = quantity;
		this.quantity_type = quantity_type;
		this.email = email;
		this.person_name = person_name;
		this.company_name = company_name;
		this.mobile = mobile;
		this.is_approved = is_approved;
		this.userid = userid;
	}

	public int getQuoteId() {
		return quoteId;
	}

	public void setQuoteId(int quoteId) {
		this.quoteId = quoteId;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getQuantiry() {
		return quantiry;
	}

	public void setQuantiry(int quantiry) {
		this.quantiry = quantiry;
	}

	public String getQuantity_type() {
		return quantity_type;
	}

	public void setQuantity_type(String quantity_type) {
		this.quantity_type = quantity_type;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPerson_name() {
		return person_name;
	}

	public void setPerson_name(String person_name) {
		this.person_name = person_name;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getIs_approved() {
		return is_approved;
	}

	public void setIs_approved(String is_approved) {
		this.is_approved = is_approved;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "QuotationBean [quoteId=" + quoteId + ", product_name=" + product_name + ", quantiry=" + quantiry
				+ ", quantity_type=" + quantity_type + ", email=" + email + ", person_name=" + person_name
				+ ", company_name=" + company_name + ", mobile=" + mobile + ", is_approved=" + is_approved + ", userid="
				+ userid + "]";
	}

}
