package com.edonald.deliver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DeliverController {

	@GetMapping("/deliverhome")
	public String deliverhome() {
		return "/delivery/deliverhome/deliverhome";
	}
}
