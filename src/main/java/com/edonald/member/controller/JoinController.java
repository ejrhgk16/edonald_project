package com.edonald.member.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.AuthenticationCodeDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;
import com.edonald.member.service.CertifyService;
import com.edonald.member.service.MemberService;
import com.edonald.securityconfig.SecurityUserDetailService;

@Controller
public class JoinController {
	@Autowired
	private CertifyService certifyService;
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private SecurityUserDetailService userDetailService;
	
	@GetMapping("/ed/joinPage")
	public String joinpage( ) {
		return "/delivery/join/joinAddress";
	}
	
	@PostMapping("/ed/joinUserPage")
	public @ResponseBody String joinFindAdress(@RequestBody AddressDto addrDto, HttpServletRequest req) {

		HttpSession session = req.getSession();
		session.setAttribute("addrDto", addrDto);
		MemberDto mem = (MemberDto)session.getAttribute("memberDto");
		if(mem != null) {
			addrDto.setUser_email(mem.getUser_email());
			memberService.joinAddressNaver(addrDto);
			SecurityUser naverDto = (SecurityUser)userDetailService.loadUserByUsername(mem.getUser_email());
			Authentication authentication = new UsernamePasswordAuthenticationToken(naverDto, naverDto.getPassword(), naverDto.getAuthorities());
			SecurityContext context = SecurityContextHolder.getContext();
			context.setAuthentication(authentication);
			return "/ed/deliverHome";
		}
		return "/ed/joinUserPage";
	}
	
	@GetMapping("/ed/joinUserPage")
	public String joinAdress2Page(HttpServletRequest req) {
		return "/delivery/join/joinUser";
	}
	
	@GetMapping("/ed/sessionTest")
	public String joinAddress2a(HttpServletRequest req) {
		HttpSession session = req.getSession();
		AddressDto dto = (AddressDto)session.getAttribute("addrDto");
		System.out.println("sesssion test  "+dto.getJibun_address());
		return "/delivery/join/joinUser";
	}
	
	@PostMapping("/ed/certifyEmail")
	public @ResponseBody String joinEmailCheck(@RequestBody MemberDto dto, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.setAttribute("memberDto", dto);
		return "/ed/checkEmailPage";
	}
	
	@PostMapping("/ed/certifyPhone")
	public @ResponseBody ResponseEntity<String> joinPhoneCheck(@RequestBody MemberDto dto, HttpServletRequest req) {
		if(memberService.joinCheckEmail(dto.getUser_email()) != null) {
			return new ResponseEntity<String>("이메일이 이미 존재합니다", HttpStatus.BAD_REQUEST);
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("memberDto", dto);
		return new ResponseEntity<String>(" d", HttpStatus.OK);
	}
	
	@GetMapping("/ed/checkEmailPage")
	public String checkEmailPage() {
		return "/delivery/join/joinCheckEmail";
	}
	@GetMapping("/ed/checkPhonePage")
	public ModelAndView checkPhonePage(HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberDto dto = (MemberDto)session.getAttribute("memberDto");
		AuthenticationCodeDto authenticationDto = new AuthenticationCodeDto();
		authenticationDto.setUser_email(dto.getUser_email());
		authenticationDto.setType("join");
		if (certifyService.getCountAuthentication(authenticationDto) > 5) {
			System.out.println("인증횟수 초과");
			return null;
		}
		String certifyNum = certifyService.certifyPhone(dto.getUser_phone(),authenticationDto);
		dto.setCertifyNum(certifyNum);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/delivery/join/joinCheckPhone");
		return mv;
	}
	@GetMapping("/ed/join/certifyNumCheck")
	public @ResponseBody ResponseEntity<String>certifyCheck(@RequestParam String certifyNum, HttpSession session){
		MemberDto dto = (MemberDto) session.getAttribute("memberDto");
		String certifyNumCheck = dto.getCertifyNum();
		if(certifyNumCheck.equals(certifyNum)) {
			return new ResponseEntity<String>(HttpStatus.OK);
		}else {
			return new ResponseEntity<String>("인증번호가 다릅니다", HttpStatus.BAD_REQUEST);
		}
	}
	
	@GetMapping("/ed/joinComplete")
	public String  joinComplete(HttpServletRequest req) {
		System.out.println("joincompl");
		memberService.joinMember(req);
		return "redirect:/ed/deliverHome";
	}
	

	
	}

	
	
