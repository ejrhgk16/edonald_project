package com.edonald.hadmin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@RequestMapping(value = "/hadmin/burgerMenu", method = RequestMethod.GET)
	public String hadminBurgerMenu(Model model) {
		model.addAttribute("list",bService.listAll());
		return "admin/hadmin/menu/burgerNset2";
	}
	
	@RequestMapping(value = "/hadmin/burger/updateStatus.do", method = RequestMethod.POST)
	public String updateStatus(String burger_code, int burger_status) {
		bService.updateStatus(burger_code,burger_status);
		return "admin/hadmin/menu/burgerNset2";
	}
	
	@RequestMapping(value = "/hadmin/register/burger", method = RequestMethod.GET)
	public String hadminRegisterBurger(Model model, String b_seq) {
		if(b_seq != null) {
			model.addAttribute("dto",bService.getMenu(b_seq));
			model.addAttribute("pageSetting","수정");
		}
		return "admin/hadmin/menu/burgerRegister";
	}
	
	@ResponseBody
	@RequestMapping(value = "/hadmin/burger/insert", method = RequestMethod.POST)
	public String insert(BurgerDto dto,@RequestParam("mainUploadFile") MultipartFile mainUploadFile,@RequestParam("subUploadFile") MultipartFile subUploadFile) {
		String path = "menu/burger";
		dto.setBurger_img_path(fService.fileUpload(mainUploadFile, path));
		dto.setBurger_set_img_path(fService.fileUpload(subUploadFile, path));
		bService.insert(dto);
	return "등록완료";
	}
	
	@ResponseBody
	@RequestMapping(value = "/hadmin/burger/update", method = RequestMethod.POST)
	public String update(BurgerDto dto,@RequestParam("mainUploadFile") MultipartFile mainUploadFile,@RequestParam("subUploadFile") MultipartFile subUploadFile) {
		String path = "menu/burger";
		dto.setBurger_status(1);
		if(mainUploadFile.getOriginalFilename().equals("")) {
		}else {
			dto.setBurger_img_path(fService.fileUpload(mainUploadFile, path));
		}
		if(subUploadFile.getOriginalFilename().equals("")) {
		}else {
			dto.setBurger_set_img_path(fService.fileUpload(subUploadFile, path));
		}
		bService.update(dto);
		return "수정완료";
	}
	
	

	
	@RequestMapping(value = "/temp", method = RequestMethod.GET)
	public String temp() {
		return "admin/hadmin/usercheck/usercheck";
	}
}
