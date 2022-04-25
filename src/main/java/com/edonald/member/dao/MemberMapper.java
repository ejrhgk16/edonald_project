package com.edonald.member.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.MemberDto;

@Repository
public interface MemberMapper {
	public void joinMemberAddr(AddressDto dto);
	public void joinMemberInfo(MemberDto dto);
	public MemberDto getMemberById(String username);
	public List<AddressDto> getAddress(String username);
}
