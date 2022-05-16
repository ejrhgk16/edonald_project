package com.edonald.order.dao;

import com.edonald.order.dto.OrderNumDto;

public interface OrderMapper {
	public OrderNumDto checkOrderNum(String order_num);
	public void insertOrderNum(OrderNumDto dto);
}
