package com.edonald.hadmin.dto;

import lombok.Data;

@Data
public class StoreDto {
	private String store_address;
	private String store_name;
	private String store_phone;
	private int store_delivery;
	private int store_driverthru;
	private int store_status;
	private int store_code;
	private double store_log;
	private double store_lat;
}
