package com.edonald.order.dto;

import lombok.Data;

@Data
public class CartDto {
	private int cart_seq;
	private int cart_product_code;
	private String cart_product_name;
	private String cart_product_img_path;
	private  int cart_product_price;
	private int cart_product_quant;
	private int order_seq;
	private String merchanuid;
	private String comp1_name;
	private String comp2_name;
	private String comp3_name;
	private String comp4_name;
	private String comp5_name;
	private String comp6_name;
	private String comp7_name;
	private String comp8_name;
	private String comp_type;//세트 라지세트 인지
	private String menu_type;//버거인지
	private int calc_price;
}
