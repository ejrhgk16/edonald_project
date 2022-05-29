package com.edonald.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.member.dao.MemberMapper;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;
import com.edonald.member.service.MemberService;
import com.edonald.oauthConfig.NaverLogin;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.oauth.OAuth20Service;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import lombok.extern.log4j.Log4j2;


@Controller
public class MemberController {
	@Autowired
	private NaverLogin naverLogin;
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberMapper mapper;
	@Autowired
	private BCryptPasswordEncoder encoder;


	@RequestMapping(value = "/ed/naverCallback", method = { RequestMethod.GET, RequestMethod.POST })
	public String naverLogin(@RequestParam String code, @RequestParam String state, HttpServletRequest req,
			HttpSession session) throws IOException {
		OAuth2AccessToken token = naverLogin.getAccessToken(session, code, state);
		String result = naverLogin.getUserProfile(token);
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(result);
		JsonObject object = element.getAsJsonObject();
		JsonObject response = object.getAsJsonObject("response");
		String url = memberService.naverLogin(response, req);
		return url;
	}

	// @RequestMapping(value="/member/selectAddress", produces = "application/text;
	// charset=UTF-8", method=RequestMethod.GET)
	@GetMapping("/member/selectAddress")
	public String selectAddress(@RequestParam int address_seq, Authentication authentication, HttpSession session) {
		if(session.getAttribute("orderListDto") != null) {
			session.removeAttribute("orderListDto");
		}
		
		SecurityUser securityUser = (SecurityUser) authentication.getPrincipal();
		System.out.println("principal " + securityUser.getMemberDto().getUser_email());
		AddressDto addr = memberService.getAddressById(address_seq);
		System.out.println("바꿀 주소 : " + addr.getRoad_address());
		securityUser.getMemberDto().setDeliverAddress(addr);
		String changeAddr = securityUser.getMemberDto().getDeliverAddress().getRoad_address();
		System.out.println("주소 바뀜??" + securityUser.getMemberDto().getDeliverAddress().getRoad_address());

		AddressDto addrDto = securityUser.getMemberDto().getDeliverAddress();

		List<StoreDto> nearStoreList = memberService.getNearStoreList(addrDto);
		if (nearStoreList.isEmpty()) {
			securityUser.getMemberDto().setDeliverStore(null);
		}
		for (StoreDto s : nearStoreList) {
			System.out.println("sssss" + s.getStore_address());
			if (s.getStore_delivery() == 1 && s.getStore_status() == 1) {
				System.out.println("ss2222" + s.getStore_address());
				securityUser.getMemberDto().setDeliverStore(s);
				break;
			}
		}
		return "redirect:/ed/deliverHome";
	}

	@GetMapping("/member/addAddressPage")
	public String addAddressPage() {
		return "/delivery/join/addAddress";
	}

	@PostMapping("/member/addAddress")
	public @ResponseBody String addAddress(Authentication authentication, @RequestBody AddressDto addr) {
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		System.out.println("주소추가 !!! " + user.getMemberDto().getUser_name());
		System.out.println("주소" + addr.getDetail_address());
		addr.setUser_email(user.getMemberDto().getUser_email());
		addr.setD_key("n");
		System.out.println("로드 " + addr.getRoad_address());
		System.out.println("주소" + addr.getDetail_address());
		memberService.addAddress(addr);
		List<AddressDto> addrList = memberService.getAddressList(user.getMemberDto().getUser_email());
		user.getMemberDto().setAddressList(addrList);
		return "/ed/deliverHome";
	}
	
	@GetMapping("/member/mypage/trackOrder")
	public String trackOrder(Authentication authentication, Model model ) {
		SecurityUser user = (SecurityUser)authentication.getPrincipal();
		String user_email = user.getMemberDto().getUser_email();
		List<OrderListDto>orderList = memberService.getOrderList(user_email);
		model.addAttribute("orderList", orderList);
		return "/delivery/mypage/trackorder";
	}

	@GetMapping("/member/changeAccount")
	public String changeAccount() {		
		return "/delivery/mypage/editProfile";
	}
	@GetMapping("/member/changePassword")
	public String joinFindAdress2() {		
		return "/delivery/mypage/changeUserPassword";
	}
	
	@GetMapping("/member/mypage/addressBook")
	public String addressBook(Authentication authentication, Model model) {
		SecurityUser user = (SecurityUser)authentication.getPrincipal();
		MemberDto member = user.getMemberDto();
		List<AddressDto>addrlist = member.getAddressList();
		model.addAttribute("addrlist", addrlist);
		return "/delivery/mypage/addressBook";
	}
	@GetMapping("member/mypage/addressBook/delCheck")
	public @ResponseBody ResponseEntity<String> addrDelCheck(Authentication authentication) {
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto member = user.getMemberDto();
		List<AddressDto>addrList = member.getAddressList();
		if(addrList.size() <= 1) {
			return new ResponseEntity<String>("주소가 최소 하나있어야 합니다", HttpStatus.BAD_REQUEST);
		}
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	@DeleteMapping("/member/mypage/addressBook/addrDel")
	public @ResponseBody ResponseEntity<List<AddressDto>>addrDel(@RequestParam int index, Authentication authentication){
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto member = user.getMemberDto();
		List<AddressDto>addrList = member.getAddressList();
		AddressDto addrDto = addrList.get(index);
		int deladdrseq = addrDto.getAddress_seq();
		addrList.remove(index);
		user.getMemberDto().setAddressList(addrList);
		memberService.delAddr(deladdrseq);
		return new ResponseEntity<List<AddressDto>>(addrList, HttpStatus.OK);
	}
	
	@GetMapping("/member/mypage/addressBook/setDKey")
	public @ResponseBody ResponseEntity<String>setDKey(@RequestParam int index, Authentication authentication){
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto member = user.getMemberDto();
		List<AddressDto>addrList = member.getAddressList();
		addrList.get(index).setD_key("d");
		AddressDto addrDto = addrList.get(index);
		int addrseq = addrDto.getAddress_seq();
		memberService.setDKey(addrseq,member.getUser_email());
		
		user.getMemberDto().setDeliverAddress(addrDto);
		user.getMemberDto().setAddressList(addrList);
		
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	
	@ResponseBody
	@PostMapping("/member/changedAccount.do")
	public String changeAccountDo(Authentication authentication,MemberDto dto) {
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto sessionDto = user.getMemberDto();
		dto.setUser_email(sessionDto.getUser_email());
		String result = memberService.changeAccount(sessionDto,dto);
		if(result.equals("success")) {
			sessionDto.setUser_name(dto.getUser_name());
			sessionDto.setUser_phone(dto.getUser_phone());
			sessionDto.setUser_gender(dto.getUser_gender());
			return "/ed/deliverHome";
		}else {
			return result;
		}
	}
	
	@ResponseBody
	@PostMapping("/member/changedPassword.do")
	public String changePasswordDo(Authentication authentication,MemberDto dto,@RequestParam String checkPassword) {
		System.out.println(checkPassword);
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto sessionDto = user.getMemberDto();
		System.out.println(dto.getUser_password());
		String result = memberService.changePassword(sessionDto,dto,checkPassword);
		if(!result.equals("fail")) {
			System.out.println(result);
			sessionDto.setUser_password(result);
			return "/ed/deliverHome";
		}else {
			System.out.println(result);
			return result;
		}
	}
	

	

}
