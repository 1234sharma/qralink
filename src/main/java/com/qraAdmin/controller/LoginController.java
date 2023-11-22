package com.qraAdmin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.ldap.embedded.EmbeddedLdapProperties.Credential;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.qraAdmin.dao.UserDao;
import com.qraAdmin.model.UserDetail;
import com.qraAdmin.service.AdminLoginService;
import com.qraAdmin.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	@Autowired
	UserDao logindao;

	@Autowired
	UserService userService;

	@Autowired(required = true)
	AdminLoginService adminservice;

	@GetMapping("/loginPage")
	public ModelAndView firstpage() {
		ModelAndView model = new ModelAndView("homePage");
		return model;
	}

	@GetMapping("/postbyreq")
	public ModelAndView postbyrequirement() {
		ModelAndView model = new ModelAndView("postByRequirement");
		return model; 
	}

	@GetMapping("/homepage")
	public ModelAndView homepage() {
		ModelAndView model = new ModelAndView("homePage");
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
	
	@GetMapping("/SplNdProd")
	public ModelAndView AdminDash1() {
		ModelAndView model = new ModelAndView("categories_dash");
		return model;
	}
	
	@GetMapping("/ChangeAdminPassword")
	public ModelAndView ChangeAdminPassword() {
		ModelAndView model = new ModelAndView("ChangeAdminPassword");
		return model;
	}
	@GetMapping("/Classifiedproduct")
	public ModelAndView Classifiedproduct() {
		ModelAndView model = new ModelAndView("Classifiedproduct_dash");
		return model;
	}

	@PostMapping("/login")
	@ResponseBody
	public ResponseEntity<String> loginPage2(@ModelAttribute Credential cr, HttpServletRequest req) {
		String password = cr.getPassword();
		String username = cr.getUsername();
		UserDetail userdetail = null;
		System.out.println(password);
		System.out.println(username);
		try {
			userdetail = adminservice.forpasswordvalidation(username, password);
			HttpSession session = req.getSession();
			session.setAttribute("userid", userdetail.getUserid());
			session.setAttribute("username", userdetail.getUsername());
			session.setAttribute("usertype", userdetail.getUsertype());

		} catch (Exception e) {
			return new ResponseEntity<String>("invalide credentials", HttpStatus.UNAUTHORIZED);
		}
		return new ResponseEntity<String>(userdetail.getUsertype(), HttpStatus.OK);

	}

	@GetMapping("/registerPage")
	public ModelAndView registerPage() {
		ModelAndView model = new ModelAndView("registerPage");
		return model;
	}

	@PostMapping("/register")
	public ModelAndView register(HttpServletRequest req) {
		String userType = req.getParameter("type");
		String name = req.getParameter("uname");
		String CompanyName = req.getParameter("company_name");
		String mobileNumber = req.getParameter("mobile");
		String email = req.getParameter("email");
		String country = req.getParameter("country");
		String state = req.getParameter("state");
		String city = req.getParameter("city");
		String password = req.getParameter("pass");
		ModelAndView model = null;
		System.out.println(userType + " " + name + " " + CompanyName + " " + mobileNumber + " " + email + " " + country
				+ "" + state + " " + city + " " + password);

		int statuscount = userService.userRegister(name, mobileNumber, CompanyName, email, country, state, city,
				password, userType);
		if (statuscount == 0) {
			model = new ModelAndView("registerPage");
		} else {
			model = new ModelAndView("loginpage");
		}
		return model;
	}

	@GetMapping("/logout")
	public ModelAndView logout(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.removeAttribute("userid");
		session.removeAttribute("username");
		session.removeAttribute("usertype");
		return new ModelAndView("loginpage");
	}
}
