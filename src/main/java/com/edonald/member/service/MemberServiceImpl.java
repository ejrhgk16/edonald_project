package com.edonald.member.service;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.member.dao.MemberMapper;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.CartDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;
import com.edonald.oauthConfig.NaverLogin;
import com.edonald.securityconfig.SecurityUserDetailService;
import com.google.gson.JsonObject;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	@Autowired
	private BCryptPasswordEncoder encoder;
	@Autowired
	NaverLogin naverlogin;
	@Autowired
	SecurityUserDetailService userDetailService;

	@Override
	public void joinMember(HttpServletRequest req) {
		HttpSession session = req.getSession();
		AddressDto addrDto = (AddressDto) session.getAttribute("addrDto");
		MemberDto memberDto = (MemberDto) session.getAttribute("memberDto");
		String password = memberDto.getUser_password();
		String encodePassword = encoder.encode(password);
		memberDto.setUser_password(encodePassword);
		memberDto.setOauth("edonald");
		memberDto.setRole("ROLE_MEMBER");
		memberDto.setUser_status(1);
		addrDto.setUser_email(memberDto.getUser_email());
		addrDto.setD_key("d");
		mapper.joinMemberInfo(memberDto);
		mapper.joinMemberAddr(addrDto);
	}

	@Override
	public String naverLogin(JsonObject res, HttpServletRequest req) {
		String email = res.get("email").getAsString();
		String id = res.get("id").getAsString();
		String name = res.get("name").getAsString();
		System.out.println("name  " + name);
		String phone = res.get("mobile").getAsString();
		System.out.println("phone  " + phone);
		phone = phone.replace("-", "");
		
		
		String gender = res.get("gender").getAsString();
		int user_gender = 1;
		if (gender.equals("F"))
			user_gender = 2;
		
		HttpSession session = req.getSession();
		MemberDto member = mapper.getMemberById(email);
		
		if (member == null) {
			MemberDto mem = new MemberDto();
			mem.setUser_email(email);
			mem.setUser_gender(user_gender);
			mem.setRole("ROLE_MEMBER");
			mem.setOauth("naver");
			mem.setUser_name(name);
			mem.setUser_status(1);
			mem.setUser_phone(phone);
			mapper.joinMemberInfo(mem);
			session.setAttribute("memberDto", mem);
			return "redirect:/ed/joinPage";
		} else if (member != null && member.getOauth().equals("edonald")) {
			mapper.oauthNaver(email);
			SecurityUser naverDto = (SecurityUser)userDetailService.loadUserByUsername(email);
			Authentication authentication = new UsernamePasswordAuthenticationToken(naverDto, naverDto.getPassword(), naverDto.getAuthorities());
			SecurityContext context = SecurityContextHolder.getContext();
			context.setAuthentication(authentication);
			return "redirect:/ed/deliverHome";
			
		}else {
			SecurityUser naverDto = (SecurityUser)userDetailService.loadUserByUsername(email);
			Authentication authentication = new UsernamePasswordAuthenticationToken(naverDto, naverDto.getPassword(), naverDto.getAuthorities());
			SecurityContext context = SecurityContextHolder.getContext();
			context.setAuthentication(authentication);
			
			return "redirect:/ed/deliverHome";
		}

	}

	@Override
	public void joinAddressNaver(AddressDto dto) {
		mapper.joinMemberAddr(dto);
	}

	
	@Override
	public AddressDto getAddressById(int address_seq) { 
		return mapper.getAddressBySeq(address_seq);
	}

	@Override
	public void addAddress(AddressDto addr) {
		mapper.joinMemberAddr(addr);
		
	}

	@Override
	public List<AddressDto> getAddressList(String username) {
		return mapper.getAddress(username);
	}

	@Override
	public List<StoreDto> getNearStoreList(AddressDto deliverAddress) {
		return mapper.getNearStoreList(deliverAddress);
	}

	@Override
	public int calcPriceBurger(CartDto dto) {
		
		//제품 수량 증가시킬때 hidden값으로 list의 번호를 같이 넘겨줌
		//장바구니 제품을 삭제할 때 list를 다시 그려줌
		int price = dto.getCart_product_price();
		String comp_type = dto.getComp_type();
		System.out.println("ct  -- "+comp_type);
		System.out.println("comp1 -- " + dto.getComp1_name());
		int qty = dto.getCart_product_quant();
		
		if(comp_type.equals("set")) {price += 1700;}
		if(comp_type.equals("large_set")) {price += 2300;}
		return price*qty;	
	}


		
		
	}
	
	

