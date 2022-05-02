package com.edonald.menu.service;

import org.springframework.web.multipart.MultipartFile;

public interface FileUploadService {
	public String fileUpload(MultipartFile mainUploadFile , String path);
}
