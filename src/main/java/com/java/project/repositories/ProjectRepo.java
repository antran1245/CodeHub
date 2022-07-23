package com.java.project.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.java.project.models.Project;

@Repository
public interface ProjectRepo extends CrudRepository<Project, Long> {
	List<Project> findAll();
	
	@Query(value = "SELECT * FROM projects project WHERE project.user_id = ?1 AND project.id != ?2", nativeQuery = true)
	List<Project> findAllByUserId(Long userId, Long projectId);
}
