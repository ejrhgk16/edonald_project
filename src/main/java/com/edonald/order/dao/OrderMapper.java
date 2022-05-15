package com.edonald.order.dao;

import com.edonald.order.dto.OrderNumDto;

public interface OrderMapper {
	public OrderNumDto checkOrderNum(OrderNumDto dto);
	public void insertOrderNum(OrderNumDto dto);
}
