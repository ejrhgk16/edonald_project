package com.edonald.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JoinController {
	@GetMapping("/join/address")
	public String joinFindAdress() {
		return "delivery/join/joinAddress";
	}
	
	
}
