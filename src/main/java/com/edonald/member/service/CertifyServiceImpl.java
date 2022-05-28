package com.edonald.member.service;

import org.springframework.stereotype.Service;

import com.edonald.member.dto.MemberDto;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Service
public class CertifyServiceImpl implements CertifyService{
//	private String key ="NCSQKBNXP8GLDJNI";
//	private String secret = "NL4QAN5PBT1A0JCJGYV7KYY209OKQIJB";

	private String key ="NCSHLRZOR4C97AXM";
	private String secret = "FVERMOZDK8QB5R2PN7E9CTVGUMTANTGJ";
	
	@Override
	public String certifyPhone(String user_phone) {
		//디비에서 중복확인 및 횟수 확인 추가 해야함
		//포인트 다써버림
		//DefaultMessageService messageService = NurigoApp.INSTANCE.initialize(key, secret, "https://api.coolsms.co.kr");
		int num = (int)(Math.random() * (99999 - 10000 + 1)) + 10000;
//		Message msg = new Message();
//		msg.setFrom("01039085470");
//		msg.setTo(user_phone);
//		msg.setText("[edonald]인증번호 "+ num+" 입니다.");
//		SingleMessageSentResponse response = messageService.sendOne(new SingleMessageSendingRequest(msg));
//		return String.valueOf(num);
		return "12345";

		
	}
	
	@Override
	public void findPasswordByEmail(MemberDto dto) {
		
	}
}
