package com.edonald.menu.contorller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.menu.dto.BurgerDto;
import com.edonald.menu.service.BurgerService;
import com.edonald.menu.service.FileUploadService;
import com.edonald.s3.AwsS3;

@Controller
public class BurgerController {
	@Autowired
	private BurgerService bService;
	@Autowired
	private FileUploadService fService; 
	
	@RequestMapping(value = "/hadmin/burger/insert", method = RequestMethod.POST)
	public String insert(BurgerDto dto, MultipartFile mainUploadFile, MultipartFile subUploadFile) {
		String path = "menu/burger";
		dto.setBurger_status(1);
		dto.setBurger_img_path(fService.fileUpload(mainUploadFile, path));
		dto.setBurger_set_img_path(fService.fileUpload(subUploadFile, path));
		bService.insert(dto);
		return "admin/hadmin/menu/burgerRegister";
	}
	
	// 메인메뉴 .. 하던거.. 지워야할듯.. ? 
	@RequestMapping(value = "/burger/list", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list",bService.listAll());
		return "main/menu/burgermenu";
	}
	
	
}
