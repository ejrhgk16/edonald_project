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
import com.edonald.menu.dto.ImageDto;
import com.edonald.menu.service.BurgerService;
import com.edonald.s3.AwsS3;

@Controller
public class BurgerController {
	@Autowired
	private BurgerService service;
	
	@RequestMapping(value = "/admin/burger/insert", method = RequestMethod.GET)
	public String insert(BurgerDto dto) {
		service.insert(dto);
		return null;
	}
	
	// 메인메뉴 .. 하던거.. 지워야할듯.. ? 
	@RequestMapping(value = "/burger/list", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list",service.listAll());
		return "main/menu/burgermenu";
	}
	
	
}
