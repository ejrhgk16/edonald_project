package com.edonald.deliver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.edonald.member.dto.AddressDto;

@Controller
public class DeliverController {

	@GetMapping("/ed/deliverHome")
	public String deliverhome() {
		return "/delivery/deliverhome/deliverhome";
	}

	
}
