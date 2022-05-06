package com.edonald.hadmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StoreManageController {
	
	@GetMapping("/hadmin/usercheck")
	public String usercheck() {
		return "/admin/hadmin/usercheck/usercheck";
	}
	
	@GetMapping("/hadmin/storeUpdate")
	public String store() {
		return "/admin/hadmin/usercheck/storeUpdate";
	}
	
	@GetMapping("/hadmin/store")
	public String storeManage() {
		return "/admin/hadmin/index2";
	}
	
	@GetMapping("/hadmin/storeRegister")
	public String storeRegister() {
		return "/admin/hadmin/usercheck/storeRegister";
	}
}
