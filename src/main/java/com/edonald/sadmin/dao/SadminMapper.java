package com.edonald.sadmin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;

@Repository
public interface SadminMapper {
	public List<MenuDto> listAll(@Param("type")String type);
	public List<Integer> listBlock(@Param("store_code") String store_code);
	public void insertBlock(Map<String, String> map);
	public void deleteBlock(Map<String, String> map);
	public StoreDto getStore(@Param("store_code") int store_code);
	public void updateStoreStatus(Map<String, String> map);
	public List<OrderListDto> getOrderList(@Param("store_code") int store_code);
	public List<OrderListDto> getNewOrderList(@Param("store_code") int store_code,@Param("order_seq") int order_seq);
	public List<CartDto> getCartList(@Param("merchanuid") String merchanuid);
	public void updateOrder(@Param("order_seq") int order_seq, @Param("order_status") int order_status);
	
}
