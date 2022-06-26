package com.java.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.java.project.models.Project;
import com.java.project.services.ProjectService;

@Controller
public class ProjectController {
	
	@Autowired
	private ProjectService projectService;
	
//	======================== Display ===========================
	@GetMapping("/project/new")
	public String newProject(Model model) {
		model.addAttribute("newProject", new Project());
		return "/project/newProject.jsp";
	}
	
	@GetMapping("/project/{id}/detail")
	public String detailProject(@PathVariable("id") Long id, Model model) {
		Project project = projectService.getProject(id);
		model.addAttribute("project", project);
		return "/project/detailProject.jsp";
	}
	
	@GetMapping("/project/{id}/edit")
	public String editProject(@PathVariable("id") Long id, Model model) {
		Project project = projectService.getProject(id);
		model.addAttribute("editProject", project);
		return "/project/editProject.jsp";
	}
//	========================== Action ===========================
	@PostMapping("/project/new")
	public String createProject(@ModelAttribute("newProject") Project project, BindingResult result) {
		if(result.hasErrors()) {
			return "/project/newProject.jsp";
		}
		projectService.save(project);
		return "redirect:/home";
	}
	@PutMapping("/project/{id}/edit")
	public String updateProject(@ModelAttribute("editProject") Project project, BindingResult result) {
		if(result.hasErrors()) {
			return "/project/editProject.jsp";
		}
		projectService.save(project);
		return "redirect:/home";
	}
}
