package com.java.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
//	======================= Display ==========================
	@GetMapping("/")
	public String home() {
		return "home.jsp";
	}
}
