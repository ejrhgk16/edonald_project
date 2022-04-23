package com.edonald.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edonald.member.dto.AddressDto;

@Controller
public class JoinController {
	
	@GetMapping("/ed/joinPage")
	public String joinpage() {
		return "/delivery/join/joinAddress";
	}
	
	@PostMapping("/ed/joinUserPage")
	public @ResponseBody String joinFindAdress(@RequestBody AddressDto addrDto, HttpServletRequest req) {
		System.out.println("ab asdfasfd"+ addrDto.getJibunAddress());
		HttpSession session = req.getSession();
		session.setAttribute("addrDto", addrDto);
		return "/ed/joinUserPage";
	}
	
	@GetMapping("/ed/joinUserPage")
	public String joinAdress2Page(HttpServletRequest req) {
		HttpSession session = req.getSession();
		AddressDto dto = (AddressDto)session.getAttribute("addrDto");
		System.out.println(dto.getJibunAddress());
		return "/delivery/join/joinUser";
	}
	
	@GetMapping("/ed/sessionTest")
	public String joinAddress2a(HttpServletRequest req) {
		HttpSession session = req.getSession();
		AddressDto dto = (AddressDto)session.getAttribute("addrDto");
		System.out.println("sesssion test  "+dto.getJibunAddress());
		return "/delivery/join/joinUser";
	}
	
}
