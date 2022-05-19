package com.edonald.order.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class OrderListDto {
	private int order_seq;
	private int user_type;
	private String user_name;
	private Timestamp order_date;
	private Timestamp delivery_time;
	private String user_address;
	private String user_phone;
	private int order_status;
	private int total_price;
	private int discount;
	private int final_price;
	private String order_comment;
	private int store_code;
	private String cupone_code;
	private String merchanuid;
	private String user_email;
	private String exactcash;
	private String cupon_title;
	private int postcode;
	private int  time_esti;//배달 예상 시간
	private List<CartDto>cartList =new ArrayList<CartDto>();
	private int deliverCost;//배달비 2500
	private String payment_type;
	private String imp_uid;
	
}
