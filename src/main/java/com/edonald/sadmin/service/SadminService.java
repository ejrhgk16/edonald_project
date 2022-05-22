package com.edonald.sadmin.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.edonald.hadmin.dto.StoreDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;

public interface SadminService {
	public StoreDto getStore(int store_code);
	public void updateStoreStatus(Map<String, String> map);
	public List<OrderListDto> getOrderList(int store_code);
	public void updateOrder(int order_seq,int order_status);
	public List<OrderListDto> getNewOrderList(int store_code,int order_seq);
}
