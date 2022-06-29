package com.java.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.java.project.services.ProjectService;

@Controller
public class HomeController {
	
	@Autowired
	private ProjectService projectService; 
	
//	======================= Display ==========================
	@GetMapping("/")
	public String home(Model model) {
		List<Project> projects = 
		return "home.jsp";
	}
	
	@GetMapping("/bg")
	public String bg() {
		return "background.jsp";
	}
}
