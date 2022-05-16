package com.edonald.order.dto;

import lombok.Data;

@Data
public class PayInfoDto {
	private String imp_uid;
	private String merchant_uid;
	private int amount;
}
