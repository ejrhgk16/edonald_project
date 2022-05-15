package com.edonald.order.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderNumDto {
	private String user_phone;
	private String order_num;
	private Date order_date;
}
