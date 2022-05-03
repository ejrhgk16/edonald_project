package com.edonald.securityconfig;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.edonald.member.dao.MemberMapper;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;

@Service
public class SecurityUserDetailService implements UserDetailsService {

	@Autowired
	MemberMapper mapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("username   !!!!!!!!!!!!!!!!!!!!!!!!!"+ username);
		MemberDto memberDto = mapper.getMemberById(username);
		if(memberDto.getUser_email() == null) {
			System.out.println("해당사용자없음");
			throw new UsernameNotFoundException("해당사용자를 찾을수가없습니다");
		}else {
			List<AddressDto>addressList= mapper.getAddress(username);
			memberDto.setAddressList(addressList);
			for(AddressDto addr : addressList) {
				if(addr.getD_key().equals("d")) {
					memberDto.setDeliverAddress(addr);
				}
			}
			return new SecurityUser(memberDto);
		}
	}

}
