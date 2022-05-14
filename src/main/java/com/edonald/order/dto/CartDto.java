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
	private String merchnuid;
	private String comp1_name;
	private String comp2_name;
	private String comp3_name;
	private String comp4_name;
	private String comp5_name;
	private String comp6_name;
	private String comp7_name;
	private String comp8_name;
	private String comp_type;
	private String menu_type;
	private int calc_price;
}
