package com.java.project.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.java.project.models.Project;
import com.java.project.models.User;
import com.java.project.services.ProjectService;
import com.java.project.services.UserService;


@Controller
public class UserController {

	@Autowired
	private UserService userServ;
	@Autowired
	private ProjectService projectServ;

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
			
			List<Project> projects = projectServ.allProjectFromUser((Long) id);
			model.addAttribute("projects", projects);
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
	@PatchMapping("/user/info")
	public String updateProfilePage(@Valid @RequestBody ProfileInfo profile, HttpSession session, Model model) {
		if(session.getAttribute("uuid") == null) {
			return "redirect:/login";
		}
		Long id = (Long) session.getAttribute("uuid");
		User user = userServ.findUser(id);
		user.setAbout(profile.getAboutMe());
		user.setLinkedin(profile.getLinkedin());
		user.setGithub(profile.getGithub());
		
		userServ.update(user);
		model.addAttribute("profileUser", user);
		
		List<Project> projects = projectServ.allProjectFromUser(id);
		model.addAttribute("projects", projects);
		
		return "userPage.jsp";
	}
}
	
	
