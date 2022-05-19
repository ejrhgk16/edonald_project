package com.edonald.member.dto;

import java.util.ArrayList;
import java.util.List;

import com.edonald.hadmin.dto.StoreDto;

import lombok.Data;

@Data
public class MemberDto {
	private String user_email;
	private String user_password;
	private String user_name;
	private int user_gender;
	private int user_status;
	private String user_phone;
	private String oauth;
	private String role;
	private int sms_agree;
	private int terms_agree;
	private int store_code;
	private List<AddressDto>addressList; 
	//배달될 주소
	private AddressDto deliverAddress;
	private StoreDto deliverStore;
	private String certifyNum;
	
}
