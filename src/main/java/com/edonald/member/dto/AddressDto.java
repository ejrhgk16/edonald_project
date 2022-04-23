package com.edonald.member.dto;

import lombok.Data;

@Data
public class AddressDto {
	private int postcode;
	private String roadAddress;
	private String jibunAddress;
	private String detailAddress;
	private double lat;
	private double  lon;
}
