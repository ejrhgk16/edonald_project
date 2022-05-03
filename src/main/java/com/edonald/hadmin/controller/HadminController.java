package com.edonald.hadmin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.hadmin.menu.serivce.BurgerService;
import com.edonald.hadmin.serivce.FileUploadService;
import com.edonald.menu.dto.BurgerDto;

@Controller
public class HadminController {
	@Autowired
	private BurgerService bService;
	@Autowired
	private FileUploadService fService; 
	
	@RequestMapping(value = "/hadmin/index", method = RequestMethod.GET)
	public String hadminIndex() {
		return "admin/hadmin/index2";
	}
	@RequestMapping(value = "/hadmin/register/burger", method = RequestMethod.GET)
	public String hadminRegisterBurger() {
		return "admin/hadmin/menu/burgerRegister";
	}
	
	@RequestMapping(value = "/hadmin/burger/insert", method = RequestMethod.POST)
	public String insert(BurgerDto dto, MultipartFile mainUploadFile, MultipartFile subUploadFile) {
		String path = "menu/burger";
		dto.setBurger_status(1);
		dto.setBurger_img_path(fService.fileUpload(mainUploadFile, path));
		dto.setBurger_set_img_path(fService.fileUpload(subUploadFile, path));
		bService.insert(dto);
		return "admin/hadmin/menu/burgerRegister";
	}
}
