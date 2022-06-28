package com.java.project.models;

import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Singleton;
import com.cloudinary.StoredFile;

public class UploadProject extends StoredFile {
	@NotEmpty(message="Title is required!")
	private String title;
	
	
	private String caption;
	
	@NotEmpty(message="Content is required!")
	private String content;
	
	private MultipartFile file;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCaption() {
		return caption;
	}
	public void setCaption(String caption) {
		this.caption = caption;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
}
