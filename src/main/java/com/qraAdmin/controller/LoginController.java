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
	public ResponseEntity<String> loginPage2(@ModelAttribute Credential cr,HttpServletRequest req) {
	    String password = cr.getPassword();
		String username = cr.getUsername();
		String result="";
		System.out.println(password);
		System.out.println(username);
		try {
		result=adminservice.forpasswordvalidation(username,password); 
		HttpSession session=req.getSession();
		session.setAttribute("username",username);
		session.setAttribute("usertype",result);
		}catch(Exception e) {
			return new ResponseEntity<String>("invalide credentials", HttpStatus.UNAUTHORIZED);
		}
		return new ResponseEntity<String>(result, HttpStatus.OK); 
				
	}
	
	@GetMapping("/registerPage")
	public ModelAndView registerPage() {
		ModelAndView model = new ModelAndView("registerPage");
		return model;
	}
	
	@PostMapping("/register")
	public ModelAndView register(HttpServletRequest req) {
		String userType=req.getParameter("type");
		String name=req.getParameter("uname");
		String CompanyName=req.getParameter("company_name");
		String mobileNumber=req.getParameter("mobile");
		String email=req.getParameter("email");
		String country=req.getParameter("country");
		String state=req.getParameter("state");
		String city=req.getParameter("city");
		String password=req.getParameter("pass");
		
		System.out.println(userType+" "+name+" "+CompanyName+" "+mobileNumber+" "+email+" "+country+""+state+" "+city+" "+password);
		
		userService.userRegister(name, mobileNumber, CompanyName, email, country, state, city, password, userType);

		ModelAndView model = new ModelAndView("loginpage");
		return model;
	}
	
}
