package com.edonald.member.service;

import java.security.SecureRandom;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.edonald.member.dao.MemberMapper;
import com.edonald.member.dto.AuthenticationCodeDto;
import com.edonald.member.dto.MemberDto;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Service
public class CertifyServiceImpl implements CertifyService {
//	private String key ="NCSQKBNXP8GLDJNI";
//	private String secret = "NL4QAN5PBT1A0JCJGYV7KYY209OKQIJB";

	@Autowired
	private MemberMapper mMapper;
	@Autowired
	private BCryptPasswordEncoder encoder;

	private String key ="NCSHLRZOR4C97AXM";
	private String secret = "FVERMOZDK8QB5R2PN7E9CTVGUMTANTGJ";

	@Override
	public String certifyPhone(String user_phone,AuthenticationCodeDto dto) {
		// 디비에서 중복확인 및 횟수 확인 추가 해야함
		// 포인트 다써버림
		DefaultMessageService messageService = NurigoApp.INSTANCE.initialize(key, secret, "https://api.coolsms.co.kr");
		int num;
		while (true) {
			num = (int) (Math.random() * (99999 - 10000 + 1)) + 10000;
			if (getCountAuthentication(dto) == 0) {
				System.out.println( "인증코드 : "+num);
				break;
			}
		}
		Message msg = new Message();
		msg.setFrom("01039085470");
		msg.setFrom("01024954502");
		msg.setTo(user_phone);
		msg.setText("[edonald]인증번호 "+ num+" 입니다.");
		SingleMessageSentResponse response = messageService.sendOne(new SingleMessageSendingRequest(msg));
		dto.setCode(num);
		insertAuthenticationCode(dto);
		return String.valueOf(num);

	}


	@Override
	public void insertAuthenticationCode(AuthenticationCodeDto dto) {
		mMapper.insertAuthenticationCode(dto);
	}

	@Override
	public int getCountAuthentication(AuthenticationCodeDto dto) {
		return mMapper.getCountAuthentication(dto);
	}

	@Override
	public List<AuthenticationCodeDto> getAuthenticationCodeByCode(AuthenticationCodeDto dto) {
		return mMapper.getAuthenticationCodeByCode(dto);
	}

	@Override
	public void findPasswordByEmail(MemberDto dto) {

	}

	@Override
	public String changePassword(String user_email) {
		MemberDto dto = new MemberDto();
		
		// 난수 생성
		char[] charSet = new char[] {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9','A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z','a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z','!', '@', '#', '$', '%', '^', '&' };
		StringBuffer sb = new StringBuffer();
		SecureRandom sr = new SecureRandom();
		sr.setSeed(new Date().getTime());
		int idx = 0;
		int len = charSet.length;
		for (int i=0; i<8; i++) {
			idx = sr.nextInt(len);
			sb.append(charSet[idx]);
		}
		String tempPass = encoder.encode(sb.toString());
		
		dto.setUser_email(user_email);
		dto.setUser_password(tempPass);
		mMapper.changePassword(dto);
		return sb.toString();
	}
	
	@Override
	public void deleteAuthenticationRecord(String user_email) {
		
	}
}
