package com.edonald.deliver.controller;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.deliver.service.DeliveryMenuService;
import com.edonald.deliver.service.DeliveryService;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.PromotionDto;
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
	@Autowired
	private DeliveryService service;
	
	@GetMapping("/ed/deliverHome")
	public String deliverhome(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		String naverUrl = naverlogin.getAuthorizationUrl(session);
		List<PromotionDto> list = service.getPromotionList();
		for(PromotionDto li : list) {
			li.setP_img("https://edonaldfile.s3.ap-northeast-2.amazonaws.com/" +li.getP_img());
		}
		model.addAttribute("naverUrl", naverUrl);
		model.addAttribute("list",list);
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
			orderListDto.setUser_name(memberDto.getUser_name());
			orderListDto.setUser_address(user_address);
			orderListDto.setStore_code(memberDto.getDeliverStore().getStore_code());
			orderListDto.setUser_email(memberDto.getUser_email());
			orderListDto.setUser_type(1); //1회원 2 비회원
			orderListDto.setUser_phone(memberDto.getUser_phone());
			orderListDto.setDeliverCost(2500);
			orderListDto.setPostcode(memberDto.getDeliverAddress().getPostcode());
			session.setAttribute("orderListDto", orderListDto);
		}
		if(session.getAttribute("noLoginMemberDto") != null && session.getAttribute("orderListDto") == null) {
			MemberDto noLoginMemberDto = (MemberDto) session.getAttribute("noLoginMemberDto");
			 String user_address = noLoginMemberDto.getDeliverAddress().getRoad_address();
			 user_address = user_address + " - "+ noLoginMemberDto.getDeliverAddress().getDetail_address();
				OrderListDto orderListDto  = new OrderListDto();
				orderListDto.setUser_name(noLoginMemberDto.getUser_name());
				orderListDto.setUser_address(user_address);
				orderListDto.setStore_code(noLoginMemberDto.getDeliverStore().getStore_code());
				orderListDto.setUser_email(noLoginMemberDto.getUser_email());
				orderListDto.setUser_type(2); //1회원 2 비회원
				orderListDto.setUser_phone(noLoginMemberDto.getUser_phone());
				orderListDto.setDeliverCost(2500);
				orderListDto.setPostcode(noLoginMemberDto.getDeliverAddress().getPostcode());
				session.setAttribute("orderListDto", orderListDto);
		}
		
		
		return "/delivery/deliverhome/deliverMenu";
	}
	
	@RequestMapping(value= "/ed/menuPage.do", method = RequestMethod.GET)
	public @ResponseBody List<MenuDto> menuPageDo(String type, String daypartId, HttpSession session) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("type", type);
		map.put("daypartId", daypartId);
		List<MenuDto> mList = dService.mList(map);
		
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		
		if(orderListDto != null) {
			int store_code = orderListDto.getStore_code();
			List<Integer> bList = dService.getBlockMenuList(store_code);
			for (Integer block : bList) {
				for(MenuDto list : mList) {
					if(block == list.getSeq()) {
						list.setBlock_status(1);
						break;
					}
				}
			}
		}
		
		
		return mList;
	}
	

	@RequestMapping(value= "/ed/PIPP", method = RequestMethod.GET)
	public String personalInformationProcessingPolicy() {
		return "/delivery/info/userInfo";
	}
	@RequestMapping(value= "/ed/TaC", method = RequestMethod.GET)
	public String termsAndConditions() {
		return "/delivery/info/useInfo";
	}
	
	@GetMapping("/ed/store/checkStatus")
	public @ResponseBody  ResponseEntity<String>checkStatus(Authentication authentication, HttpSession session){
			if(authentication != null) {
				System.out.println("check authentication ! ");
				SecurityUser user = (SecurityUser) authentication.getPrincipal();
				if(user.getMemberDto().getDeliverStore() != null) {
					return new ResponseEntity<String>(HttpStatus.OK);
				}else {
					return new ResponseEntity<String>("로그인사용자의 배달가능 지점이없음", HttpStatus.BAD_REQUEST);
				}
			}
			
			if(session.getAttribute("noLoginMemberDto") != null) {
				System.out.println("check noLoginMemberDto ! ");
				MemberDto noLoginMem = (MemberDto) session.getAttribute("noLoginMemberDto");
					if(noLoginMem.getDeliverStore() != null) {
						return new ResponseEntity<String>(HttpStatus.OK);
					}else {
						return new ResponseEntity<String>("비로그인사용자의 배달가능 지점이없음", HttpStatus.BAD_REQUEST);
					}
			}
			
			return new ResponseEntity<String>("그냥메뉴만봄", HttpStatus.OK);
			
		
	}
	

	
	

	
}

