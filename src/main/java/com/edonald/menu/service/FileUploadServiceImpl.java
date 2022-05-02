package com.edonald.menu.service;

import java.io.IOException;
import java.io.InputStream;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.s3.AwsS3;

@Service
public class FileUploadServiceImpl implements FileUploadService {

	private AwsS3 awsS3 = AwsS3.getInstance();

	@Override
	public String fileUpload(MultipartFile mainUploadFile, String path) {
//		String uploadFolder = "https://edonaldfile.s3.ap-northeast-2.amazonaws.com";
//		List<MenuDto> imageList = new ArrayList<MenuDto>();
		// 메인 이미지 가져오기
		
		String key = "";
		try {
			key = path + "/" + mainUploadFile.getOriginalFilename();
			InputStream is = mainUploadFile.getInputStream();
			String contentType = mainUploadFile.getContentType();
			long contentLength = mainUploadFile.getSize();
			awsS3.upload(is, key, contentType, contentLength);
//			MenuDto maindto = new MenuDto();
//			maindto.setImage_name(key);
//			maindto.setUpload_path(uploadFolder + key);
//			maindto.setMain_iamge(1);
//			imageList.add(maindto);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return key ;
	}
}
