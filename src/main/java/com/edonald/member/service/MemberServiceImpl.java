package com.edonald.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.edonald.member.dao.MemberMapper;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper mapper;
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Override
	public void joinMember(HttpServletRequest req ) {
		HttpSession session = req.getSession();
		AddressDto addrDto = (AddressDto)session.getAttribute("addrDto");
		MemberDto memberDto = (MemberDto)session.getAttribute("memberDto");
		String password = memberDto.getUser_password();
		String encodePassword = encoder.encode(password);
		memberDto.setUser_password(encodePassword);
		memberDto.setAuth("edonald");
		memberDto.setRole("ROLE_MEMBER");
		memberDto.setUser_status(1);
		addrDto.setUser_email(memberDto.getUser_email());
		addrDto.setD_key("d");
		mapper.joinMemberInfo(memberDto);
		mapper.joinMemberAddr(addrDto);

	}

}
