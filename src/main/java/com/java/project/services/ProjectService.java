package com.java.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.project.models.Project;
import com.java.project.repositories.ProjectRepo;

@Service
public class ProjectService {
	
	@Autowired
	private ProjectRepo projectRepo;
	
//	================== Create/Update ==========================
	public Project save(Project project) {
		return projectRepo.save(project);
	}
	
//	=================== Find All/One ==========================
	public List<Project> allProjects() {
		return projectRepo.findAll();
	}
	public Project getProject(Long id) {
		return projectRepo.findById(id).orElse(null);
	}
	public List<Project> allProjectFromUser(Long id) {
		return projectRepo.findAllById(id);
	}
	
//	======================== Delete ============================
	public void deleteProject(Long id) {
		projectRepo.deleteById(id);
	}
	
//	=============== Find all projects by one user ==============
	public List<Project> allProjectsByUser(Long userId, Long projectId) {
		return projectRepo.findAllByUserId(userId, projectId);
	}
}
