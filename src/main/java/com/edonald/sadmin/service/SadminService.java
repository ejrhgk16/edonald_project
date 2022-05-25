package com.edonald.sadmin.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;

public interface SadminService {
	public StoreDto getStore(int store_code);
	public void updateStoreStatus(Map<String, String> map);
	public List<OrderListDto> getOrderList(int store_code);
//	public void updateOrder(int order_seq,int order_status);
	public void updateOrder(OrderListDto dto);
	public List<OrderListDto> getNewOrderList(int store_code,int order_seq);
	public OrderListDto getOrderListBySeq(int order_seq);
	public List<Integer> getSalesVolumeBySeq(int menu_code, String monthorday);
	public List<Integer> getSalesVolumeBySeqAndGender(int menu_code,String monthorday,String user_gender);
	
}
