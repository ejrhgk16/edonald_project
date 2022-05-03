package com.edonald.member.service;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;

import com.edonald.member.dto.AddressDto;
import com.google.gson.JsonObject;

public interface MemberService {
	public void joinMember(HttpServletRequest req);
	public String naverLogin(JsonObject res, HttpServletRequest req);
	public void joinAddressNaver(AddressDto dto);
	public AddressDto getAddressById(int address_seq);
}
