package com.java.project.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class LoginUser {

//	=== Var ===
	@NotEmpty(message="Email is require!")
	@Email(message="Email is already in use")
	private String email;
	
	@NotEmpty(message="Password is required")
	@Size(min=8, message="Password must be at least 8 char long")
	private String password;
	
//	=== Constructor ===
	
	public LoginUser() {}

//	===Getter Setter ===
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
}
