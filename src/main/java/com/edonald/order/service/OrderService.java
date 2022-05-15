package com.edonald.order.service;

import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;

public interface OrderService {
	public int calcPriceBurger(CartDto dto);
	public String createOrderNum(String user_phone);
}
