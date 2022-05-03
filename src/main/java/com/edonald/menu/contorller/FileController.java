package com.edonald.menu.contorller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.menu.dto.ImageDto;
import com.edonald.s3.AwsS3;


@Controller
public class FileController {
	
	private AwsS3 awsS3 = AwsS3.getInstance();
	
	@RequestMapping(value = "/image/save" , method = RequestMethod.POST)
	public String iamgeSave(MultipartFile mainUploadFile , MultipartFile[] subUploadFile, Model model, String name) {
		String uploadFolder = "https://edonaldfile.s3.ap-northeast-2.amazonaws.com";
		List<ImageDto> imageList = new ArrayList<ImageDto>();
		// 메인 이미지 가져오기
		
		name = "menu/burger";
		try {
			String key = name+"/"+mainUploadFile.getOriginalFilename();
			InputStream is = mainUploadFile.getInputStream();
			String contentType = mainUploadFile.getContentType();
			long contentLength = mainUploadFile.getSize();
			awsS3.upload(is, key, contentType, contentLength);
			System.out.println("main 업로드 완료");
			ImageDto maindto = new ImageDto();
			maindto.setImage_name(key);
			maindto.setUpload_path(uploadFolder+key);
			maindto.setMain_iamge(1);
			imageList.add(maindto);
		}catch(IOException e) {
			e.printStackTrace();
		}	
		return "admin/hadmin/menu/burgerRegister";
	}
}
