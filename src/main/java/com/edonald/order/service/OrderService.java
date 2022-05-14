package com.edonald.order.service;

import com.edonald.order.dto.CartDto;

public interface OrderService {
	public int calcPriceBurger(CartDto dto);
}
