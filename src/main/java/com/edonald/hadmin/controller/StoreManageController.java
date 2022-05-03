package com.edonald.hadmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StoreManageController {
	
	@GetMapping("/hadmin/usercheck")
	public String usercheck() {
		return "/admin/hadmin/usercheck/usercheck";
	}
}
