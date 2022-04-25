package com.edonald.member.dto;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

public class SecurityUser extends User {
	private static final long serialVersionUID = 1L;
	
	private MemberDto member;
	public SecurityUser(MemberDto member) {
		super(member.getUser_email(), member.getUser_password(), AuthorityUtils.createAuthorityList(member.getRole().toString()));
		this.member = member; 
	}
	
	public MemberDto getMemberDto() {
	return member;
	}

}
