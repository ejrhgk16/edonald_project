package com.edonald.ed;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SecurityTestController {

	@GetMapping("/sample/all")
	public String permitAll() {
		return "all page";
	}
	
	@GetMapping("/sample/admin")
	public String permitAdmin() {
		return "admin page";
	}
}
