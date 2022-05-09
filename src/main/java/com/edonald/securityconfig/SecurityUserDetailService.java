package com.edonald.securityconfig;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dto.StoreDto;
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
		System.out.println("username   !!!!!!!!!!!!!!!!!!!!!!!!!" + username);
		MemberDto memberDto = mapper.getMemberById(username);
		if (memberDto.getUser_email() == null) {
			System.out.println("해당사용자없음");
			throw new UsernameNotFoundException("해당사용자를 찾을수가없습니다");
		} else {
			List<AddressDto> addressList = mapper.getAddress(username);
			memberDto.setAddressList(addressList);
			for (AddressDto addr : addressList) {
				if (addr.getD_key().equals("d")) {
					memberDto.setDeliverAddress(addr);
				}
			}
			
			List<StoreDto> nearStoreList = mapper.getNearStoreList(memberDto.getDeliverAddress());
			if(nearStoreList.isEmpty()) {
				memberDto.setDeliverStore(null);
			}
			for (StoreDto s : nearStoreList) {
				if (s.getStore_delivery() == 1 && s.getStore_status() == 1) {
					memberDto.setDeliverStore(s);
					break;
				}
			}

			return new SecurityUser(memberDto);
		}
	}

}
