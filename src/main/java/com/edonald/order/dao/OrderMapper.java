package com.edonald.order.dao;

import java.util.List;

import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;

public interface OrderMapper {
	public OrderNumDto checkOrderNum(String order_num);
	public void insertOrderNum(OrderNumDto dto);
	public void insertOrderInfo(OrderListDto dto);
	public void insertCartInfo(CartDto cartDto);
	public OrderListDto getOrderInfoByUid(String merchanuid);
	public List<CartDto>getCartListByUid(String merchanuid);
}
