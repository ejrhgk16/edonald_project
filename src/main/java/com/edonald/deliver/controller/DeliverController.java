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
import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;
import com.edonald.oauthConfig.NaverLogin;
import com.edonald.order.dto.OrderListDto;

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
	public String menuPage(Authentication authentication, HttpSession session) {
		if(authentication != null && session.getAttribute("orderListDto") == null) {
			 SecurityUser user = (SecurityUser)authentication.getPrincipal();
			 MemberDto memberDto = user.getMemberDto();
			 String user_address = memberDto.getDeliverAddress().getRoad_address();
			 user_address = user_address + " - "+ memberDto.getDeliverAddress().getDetail_address();
			OrderListDto orderListDto  = new OrderListDto();
			orderListDto.setUser_address(user_address);
			orderListDto.setStore_code(memberDto.getDeliverStore().getStore_code());
			orderListDto.setUser_email(memberDto.getUser_email());
			orderListDto.setUser_type(1); //1회원 2 비회원
			orderListDto.setUser_phone(memberDto.getUser_phone());
			orderListDto.setDeliverCost(2500);
			orderListDto.setPostcode(memberDto.getDeliverAddress().getPostcode());
			session.setAttribute("orderListDto", orderListDto);
		}
		
		
		return "/delivery/deliverhome/deliverMenu";
	}
	
	@RequestMapping(value= "/ed/menuPage.do", method = RequestMethod.GET)
	public @ResponseBody List<MenuDto> menuPageDo(String type, String daypartId, HttpSession session) {
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		int store_code = orderListDto.getStore_code();
		Map<String, String> map = new HashMap<String, String>();
		map.put("type", type);
		map.put("daypartId", daypartId);
		List<MenuDto> mList = dService.mList(map);
		List<Integer> bList = dService.getBlockMenuList(store_code);
		for (Integer block : bList) {
			System.out.println(block);
			for(MenuDto list : mList) {
				
				if(block == list.getSeq()) {
					list.setBlock_status(1);
					System.out.println(list.getName() + list.getBlock_status());
					break;
				}
				System.out.println(list.getName() + list.getBlock_status());
			}
		}
		return mList;
	}

	
}

