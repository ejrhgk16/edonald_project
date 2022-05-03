package com.edonald.hadmin.serivce;

import org.springframework.web.multipart.MultipartFile;

public interface FileUploadService {
	public String fileUpload(MultipartFile mainUploadFile , String path);
}
