package com.edonald.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.edonald.member.dto.AddressDto;

@Controller
public class JoinController {
	
	@GetMapping("/ed/joinPage")
	public String joinpage() {
		return "/delivery/join/joinAddress";
	}
	
	@PostMapping("/ed/joinUserPage")
	public String joinFindAdress(AddressDto addrDto ) {
		System.out.println(addrDto.getDetailAddress());
		return "redirect:/ed/joinUserPage";
	}
	
	@GetMapping("/ed/joinUserPage")
	public String joinAdress2Page() {
		return "/delivery/join/joinUser";
	}
	
}
