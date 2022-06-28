package com.java.project.controllers;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.java.project.models.Project;
import com.java.project.models.UploadProject;
import com.java.project.services.ProjectService;

@Controller
@PropertySource("classpath:application-dev.properties")

public class ProjectController {
	@Autowired
	private ProjectService projectService;
	
	@Value("${apiKey}")
	private String apiKey;
	@Value("${cloudName}")
	private String cloudName;
	@Value("${apiSecret}")
	private String apiSecret;
	
//	======================== Display ===========================
	@GetMapping("/project/new")
	public String newProject(Model model) {
		model.addAttribute("newProject", new UploadProject());
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
	@SuppressWarnings("rawtypes")
	@PostMapping(value="/project/new")
	public String createProject(@Valid @ModelAttribute("newProject") UploadProject project, BindingResult result) throws IOException {
		if(result.hasErrors()) {
			return "/project/newProject.jsp";
		}
		Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
				"cloud_name", cloudName,
				"api_key", apiKey,
				"api_secret", apiSecret,
				"secure", true));
		
		
		Map uploadResult = null;
		
		if(project.getFile() != null && !project.getFile().isEmpty()) {
			
			Date timestamp = new Date();
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("timestamp", timestamp);
			params.put("public_id", project.getTitle());
			params.put("folder", "java");
			
			uploadResult = cloudinary.uploader().upload(project.getFile().getBytes(),
					params);
		}
		
		Project p = new Project();
		p.setTitle(project.getTitle());
		p.setCaption(project.getCaption());
		p.setContent(project.getContent());
		p.setImage((String) uploadResult.get("url"));
		
		projectService.save(p);
		return "redirect:/";
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
