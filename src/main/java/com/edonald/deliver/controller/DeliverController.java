package com.edonald.deliver.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.edonald.member.dto.AddressDto;
import com.edonald.menu.service.BurgerService;

@Controller
public class DeliverController {
	
	@Autowired
	private BurgerService bService;
	
	@GetMapping("/ed/deliverHome")
	public String deliverhome() {
		return "/delivery/deliverhome/deliverhome";
	}
	@GetMapping("/ed/deliverMenu")
	public String delivermenu(Model model) {
		model.addAttribute("list",bService.listAll());
		return "/delivery/deliverhome/deliverMenu";
	}
	
}
