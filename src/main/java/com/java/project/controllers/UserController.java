package com.java.project.controllers;

import java.net.URI;
import java.net.URISyntaxException;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.java.project.models.LoginUser;
import com.java.project.models.ProfileInfo;
import com.java.project.models.User;
import com.java.project.services.UserService;


@Controller
public class UserController {

	@Autowired
	private UserService userServ;

//	========================== DISPLAY ======================================
	@GetMapping("/login")
	public String index(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());			
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
	public String test(Model model, HttpSession session) {
		if(session.getAttribute("uuid") == null) {
			return "redirect:/login";
		}
		User user = userServ.findUser((Long) session.getAttribute("uuid"));
		model.addAttribute("user", user);
		return "userPage.jsp";
	}
	
	@GetMapping("/user/{id}")
	public String userPage(Model model, HttpSession session, @PathVariable(value="id") Long id) {
		if(session.getAttribute("uuid") == null) {
			return "redirect:/login";
		}
		User user = userServ.findUser((Long) session.getAttribute("uuid"));
		model.addAttribute("user", user);
		if(id != null) {
			User profileUser = userServ.findUser(id);
			model.addAttribute("profileUser", profileUser);
		}
		return "userPage.jsp";
	}
////	
	
	
	@GetMapping("/logout")
	public String logout(HttpSession sesh) {
		sesh.removeAttribute("uuid");
		return "redirect:/";
	}
	
//	=========================== Action ================================
	
//	Register
	@PostMapping("/reg")
	public String register(@Valid @ModelAttribute("newUser") User registerUser, BindingResult result, Model model, HttpSession session) {
		User user = userServ.register(registerUser, result);
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "loginPage.jsp";
		}
		session.setAttribute("uuid", user.getId());
		return "redirect:/";
	}
//	Login
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser loginUser, BindingResult result, Model model, HttpSession session) {
		User user = userServ.login(loginUser, result);
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "loginPage.jsp";
		}
		session.setAttribute("uuid", user.getId());
		return "redirect:/";
	}
	
//	Update Profile Page
	@SuppressWarnings("rawtypes")
	@PatchMapping("/user/info")
	public ResponseEntity updateProfilePage(@Valid @RequestBody ProfileInfo profile, HttpSession session) throws URISyntaxException {
		if(session.getAttribute("uuid") == null) {
			return (ResponseEntity) ResponseEntity.created(new URI("/login"));
		}
		Long id = (Long) session.getAttribute("uuid");
		User user = userServ.findUser(id);
		user.setAbout(profile.getAboutMe());
		user.setLinkedin(profile.getLinkedin());
		user.setGithub(profile.getGithub());
		user.setEmail(profile.getEmail());
		
		userServ.update(user);
		
		return ResponseEntity.ok(HttpStatus.OK);
	}
}
	
	
