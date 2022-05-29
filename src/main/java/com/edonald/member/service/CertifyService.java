package com.edonald.member.service;

import java.util.List;


import com.edonald.member.dto.AuthenticationCodeDto;
import com.edonald.member.dto.MemberDto;

public interface CertifyService {
	public String certifyPhone(String user_phone,AuthenticationCodeDto dto);
	public void findPasswordByEmail(MemberDto dto);
	public int getCountAuthentication(AuthenticationCodeDto dto);
	public void insertAuthenticationCode(AuthenticationCodeDto dto);
	public List<AuthenticationCodeDto> getAuthenticationCodeByCode(AuthenticationCodeDto dto);
	public String changePassword(String user_email);
	public void deleteAuthenticationRecord(String user_email);
}
