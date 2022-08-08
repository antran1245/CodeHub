package com.java.project.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="users")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
//	=== Variables ===================================================================
	
	@NotEmpty(message="First name is required!")
	private String first_name;
	

	@NotEmpty(message="Last name is required!")
	private String last_name;
	
	@NotEmpty(message="Email is required!")
	@Email(message="Need a valid email!")
	private String email;
	
	
	@NotEmpty(message="Password is required!")
	@Size(min=2, message="Password must be at least 2 char long")
	private String password;
	
	@Transient
	@Size(min=2, message="Password must be at least 2 char long")
	@Column(updatable = false)
	private String confirmPassword;
	
	private String about;
	
	private String github;
	
	private String linkedin;
	
//	=== Relationship ===================================================================
	
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private List<Project> projects;
	
//	=== Created at, Updated at ===================================================
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
//	=== Constructor =============================================================
	
	public User() {}
	
// Getter setter=============================================================
	
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}
	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String name) {
		this.first_name = name;
	}
	
	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String name) {
		this.last_name = name;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	
	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getGithub() {
		return github;
	}

	public void setGithub(String github) {
		this.github = github;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}

	public List<Project> getProjects() {
		return projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}
	

	
}