package com.edonald.member.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.google.gson.JsonObject;

public interface MemberService {
	public void joinMember(HttpServletRequest req);
	public String naverLogin(JsonObject res, HttpServletRequest req);
	public void joinAddressNaver(AddressDto dto);
	public AddressDto getAddressById(int address_seq);
	public void addAddress(AddressDto addr);
	public List<AddressDto>getAddressList(String username);
	public List<StoreDto> getNearStoreList(AddressDto deliverAddress);
	public List<OrderListDto> getOrderList(String user_email);

}
