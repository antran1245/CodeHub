package com.java.project.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.java.project.models.LoginUser;
import com.java.project.models.User;
import com.java.project.services.UserService;


@Controller
public class UserController {

	@Autowired
	private UserService userServ;

//	========================== DISPLAY ======================================
	@GetMapping("/login")
	public String index(Model model, HttpSession sesh) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		if(sesh.getAttribute("uuid") !=null) {
			return "redirect:/home";
		}
		return "loginPage.jsp";
	}
	

//	@GetMapping("/home")
//	public String dashboard(Model model, HttpSession sesh) {
//		if(sesh.getAttribute("uuid") == null) {
//			return "redirect:/";
//		}		
//		return "home.jsp";
//	}
	
	
	@GetMapping("/user")
	public String test(Model model) {
		model.addAttribute("user", new User());
		return "userPage.jsp";
	}
////	
	
	
//	@GetMapping("/logout")
//	public String logout(HttpSession sesh) {
//		sesh.removeAttribute("uuid");
//		return "redirect:/";
//	}
//	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
	
