package com.edonald.member.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class OrderListDto {
	private int order_seq;
	private int user_type;
	private String user_name;
	private Date order_date;
	private Date delivery_time;
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
	private Date time_esti;//배달 예상 시간
	private List<CartDto>cartList =new ArrayList<CartDto>();
	private int deliverCost;//배달비 2500
}
