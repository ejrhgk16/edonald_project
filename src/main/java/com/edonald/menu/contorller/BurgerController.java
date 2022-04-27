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
	
	@RequestMapping(value = "/burger/list", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list",service.listAll());
		return "main/menu/burgermenu";
	}
}
