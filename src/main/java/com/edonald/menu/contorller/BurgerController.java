package com.edonald.menu.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edonald.menu.service.BurgerService;

@Controller
public class BurgerController {
	@Autowired
	private BurgerService service;

	public int pageSize = 6;
	public int totalRecord = 0;
	public int totalPage = 1;
	public int lastPage = 0;
	
	@RequestMapping(value = "/burger/list", method = RequestMethod.GET)
	public String list(Model model) {
		totalRecord = service.totalRecord();
		totalPage = totalRecord / pageSize;
		lastPage = totalRecord % pageSize;
		int start;
		int end;
		model.addAttribute("list",service.listAll(start, end));
		return "main/menu/burgermenu";
	}
}
