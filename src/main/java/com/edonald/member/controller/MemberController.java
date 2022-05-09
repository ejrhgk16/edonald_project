package com.edonald.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edonald.hadmin.dto.StoreDto;
import com.edonald.member.dao.MemberMapper;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;
import com.edonald.member.service.MemberService;
import com.edonald.oauthConfig.NaverLogin;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.oauth.OAuth20Service;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
public class MemberController {
	@Autowired
	private NaverLogin naverLogin;
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberMapper mapper;
	
	 @RequestMapping(value="/ed/naverCallback", method= {RequestMethod.GET,RequestMethod.POST})
	 public String naverLogin(@RequestParam String code, @RequestParam String state, HttpServletRequest req, HttpSession session) throws IOException {
		 OAuth2AccessToken token = naverLogin.getAccessToken(session, code, state);
		 String result = naverLogin.getUserProfile(token);
		JsonParser parser =  new JsonParser();
		JsonElement element= parser.parse(result);
		JsonObject object = element.getAsJsonObject();
		JsonObject response = object.getAsJsonObject("response");
		String url = memberService.naverLogin(response, req);
		return url;
	 }
	 
	 //@RequestMapping(value="/member/selectAddress", produces = "application/text; charset=UTF-8", method=RequestMethod.GET)
	 @GetMapping("/member/selectAddress")
	 public String  selectAddress(@RequestParam int address_seq,  Authentication authentication ) {
		 SecurityUser securityUser= (SecurityUser)authentication.getPrincipal();
		 System.out.println("principal "+securityUser.getMemberDto().getUser_email());
		 AddressDto addr=memberService.getAddressById(address_seq);
		 System.out.println("바꿀 주소 : "+ addr.getRoad_address());
		 securityUser.getMemberDto().setDeliverAddress(addr);
		 String changeAddr =securityUser.getMemberDto().getDeliverAddress().getRoad_address();
		 System.out.println("주소 바뀜??" + securityUser.getMemberDto().getDeliverAddress().getRoad_address());
			
		 AddressDto addrDto = securityUser.getMemberDto().getDeliverAddress();

			List<StoreDto> nearStoreList = mapper.getNearStoreList(addrDto);
			for (StoreDto s : nearStoreList) {
				System.out.println("sssss" + s.getStore_address());
				if (s.getStore_delivery() == 1 && s.getStore_status() == 1) {
					System.out.println("ss2222" + s.getStore_address());
					securityUser.getMemberDto().setDeliverStore(s);
					break;
				}
			}
		 
		 return "/delivery/deliverhome/deliverhome";

	 }
}
