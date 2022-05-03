package com.edonald.deliver.controller;

<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Autowired;
=======


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.edonald.member.dto.AddressDto;

import com.edonald.member.dto.SecurityUser;
import com.edonald.oauthConfig.NaverLogin;

@Controller
public class DeliverController {
	@Autowired
	NaverLogin naverlogin;

	
	@GetMapping("/ed/deliverHome")
	public String deliverhome(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		String naverUrl = naverlogin.getAuthorizationUrl(session);
		model.addAttribute("naverUrl", naverUrl);
		
		return "/delivery/deliverhome/deliverhome";
	}

	
	@GetMapping("/ed/menuPage")
	public String menuPage() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); 
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		System.out.println("네이버로그인 시큐리티 연동 조인단에서 " + user.getUsername());		
		return "/delivery/deliverhome/deliverMenu";
	}
	

	
}
