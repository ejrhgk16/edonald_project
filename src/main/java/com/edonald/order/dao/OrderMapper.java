package com.edonald.order.dao;

import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;

public interface OrderMapper {
	public OrderNumDto checkOrderNum(String order_num);
	public void insertOrderNum(OrderNumDto dto);
	public void insertOrderInfo(OrderListDto dto);
	public void insertCartInfo(CartDto cartDto);
}
