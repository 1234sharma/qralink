package com.qraAdmin.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.ldap.embedded.EmbeddedLdapProperties.Credential;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.qraAdmin.dao.UserDao;
import com.qraAdmin.service.AdminLoginService;
import com.qraAdmin.service.UserService;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
	@Autowired
	UserDao logindao;
	
	@Autowired
	UserService userService;
	
	@Autowired(required=true)
	AdminLoginService adminservice;

	@GetMapping("/loginPage")
	public ModelAndView firstpage() {
		ModelAndView model = new ModelAndView("loginpage");
		return model;
	}

	@GetMapping("/qrahome")
	public ModelAndView firstpage2() {
		ModelAndView model = new ModelAndView("Home");
		return model;
	}
	@GetMapping("/admin")
	public ModelAndView AdminDash() {
		ModelAndView model = new ModelAndView("adminDashbard");
		return model;
	}

	@PostMapping("/login")
	@ResponseBody
	public String loginPage2(@ModelAttribute Credential cr) {
	    String password = cr.getPassword();
		String username = cr.getUsername();
		System.out.println(password);
		System.out.println(username);
		//adminservice.forpasswordvalidation(username,password);
		return adminservice.forpasswordvalidation(username,password); 
	}
	
	@GetMapping("/registerPage")
	public ModelAndView registerPage() {
		ModelAndView model = new ModelAndView("registerpage");
		return model;
	}
	
	@PostMapping("/register")
	public ModelAndView register(HttpServletRequest req) {
		
		String name=req.getParameter("name");
		String mobileNumber=req.getParameter("mobile");
		String CompanyName=req.getParameter("companyname");
		String email=req.getParameter("email");
		String country=req.getParameter("country");
		String state=req.getParameter("state");
		String city=req.getParameter("city");
		String password=req.getParameter("password");
		String userType=req.getParameter("usertype");
		
		userService.userRegister(name, mobileNumber, CompanyName, email, country, state, city, password, userType);

		ModelAndView model = new ModelAndView("loginpage");
		return model;
	}
	
}
