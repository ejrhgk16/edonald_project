package com.edonald.member.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.service.CertifyService;

@Controller
public class JoinController {
	@Autowired
	CertifyService certifyService;
	
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

		return "/delivery/join/joinUser";
	}
	
	@GetMapping("/ed/sessionTest")
	public String joinAddress2a(HttpServletRequest req) {
		HttpSession session = req.getSession();
		AddressDto dto = (AddressDto)session.getAttribute("addrDto");
		System.out.println("sesssion test  "+dto.getJibunAddress());
		return "/delivery/join/joinUser";
	}
	
	@PostMapping("/ed/certifyEmail")
	public @ResponseBody String joinEmailCheck(@RequestBody MemberDto dto, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.setAttribute("memberDto", dto);
		return "/ed/checkEmailPage";
	}
	
	@PostMapping("/ed/certifyPhone")
	public @ResponseBody String joinPhoneCheck(@RequestBody MemberDto dto, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.setAttribute("memberDto", dto);
		return "/ed/checkPhonePage";
	}
	
	@GetMapping("/ed/checkEmailPage")
	public String checkEmailPage() {
		return "/delivery/join/joinCheckEmail";
	}
	@GetMapping("/ed/checkPhonePage")
	public ModelAndView checkPhonePage(HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberDto dto = (MemberDto)session.getAttribute("memberDto");
		String certifyNum = certifyService.certifyPhone(dto.getUser_phone());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/delivery/join/joinCheckPhone");
		mv.addObject("certifyNum", certifyNum);
		return mv;
	}
	

	
	}

	
	
