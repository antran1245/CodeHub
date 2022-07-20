package com.java.project.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.java.project.models.Project;
import com.java.project.models.User;
import com.java.project.services.ProjectService;
import com.java.project.services.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private ProjectService projectService;
	@Autowired
	private UserService userService;
	
//	======================= Display ==========================
	@GetMapping("/")
	public String home(Model model, HttpSession session) {
		List<Project> projects = projectService.allProjects();
		if(session.getAttribute("uuid") != null) {
			User user = userService.findUser((Long) session.getAttribute("uuid"));
			model.addAttribute("user", user);
		}
		model.addAttribute("projects", projects);
		return "home.jsp";
	}
	
	@GetMapping("/bg")
	public String bg() {
		return "background.jsp";
	}
}
