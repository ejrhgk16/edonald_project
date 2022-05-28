package com.edonald.member.service;

import com.edonald.member.dto.MemberDto;

public interface CertifyService {
	public String certifyPhone(String user_phone);
	public void findPasswordByEmail(MemberDto dto);
}
