package com.edonald.deliver.controller;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.deliver.service.DeliveryMenuService;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.serivce.FileUploadService;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.SecurityUser;
import com.edonald.oauthConfig.NaverLogin;

@Controller
public class DeliverController {
	@Autowired
	NaverLogin naverlogin;
	@Autowired
	private DeliveryMenuService dService;	
	
	
	@GetMapping("/ed/deliverHome")
	public String deliverhome(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		String naverUrl = naverlogin.getAuthorizationUrl(session);
		model.addAttribute("naverUrl", naverUrl);
		
		return "/delivery/deliverhome/deliverhome";
	}

	

	@GetMapping("/ed/menuPage")
	public String menuPage(Authentication authentication, Model model) {
//		SecurityUser user = (SecurityUser) authentication.getPrincipal();
//		System.out.println("네이버로그인 시큐리티 연동 조인단에서 " + user.getUsername());
		return "/delivery/deliverhome/deliverMenu";
	}
	
	@RequestMapping(value= "/ed/menuPage.do", method = RequestMethod.GET)
	public @ResponseBody List<MenuDto> menuPageDo(String type, String daypartId) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("type", type);
		map.put("daypartId", daypartId);
		System.out.println(map);
		return dService.bList(map);
	}

	
}
