package com.edonald.member.dto;

import lombok.Data;

@Data
public class AddressDto {
	private int  address_seq;
	private String user_email;
	private String d_key;
	private int postcode;
	private String road_address;
	private String jibun_address;
	private String detail_address;
	private double lat;
	private double  lon;
}
