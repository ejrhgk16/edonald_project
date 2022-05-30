package com.edonald.hadmin.serivce;

import java.util.List;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;

public interface MakeDateService {
	public String makeOrderNum();
	public OrderNumDto checkOrderNum(String order_num);
	public List<Integer> getMenuSeqList();
	public MenuDto getMenuByCode(int code);
	public void insertOrderInfo(OrderListDto dto);
	public void insertCartInfo(CartDto dto);
}
