package com.edonald.sadmin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.sadmin.dao.SadminMapper;

@Service
public class SadminServiceImpl implements SadminService {
	
	@Autowired
	SadminMapper mapper;
	
	@Override
	public StoreDto getStore(int store_code) {
		return mapper.getStore(store_code);
	}
	
	@Override
	public void updateStoreStatus(Map<String, String> map) {
		mapper.updateStoreStatus(map);
	}
	
	@Override
	public List<OrderListDto> getOrderList(int store_code){
		List<OrderListDto> list = mapper.getOrderList(store_code);
		for(OrderListDto li : list) {
			li.setCartList(mapper.getCartList(li.getMerchanuid()));
		}
		return list;
	}
	
	@Override
	public List<OrderListDto> getNewOrderList(int store_code, int order_seq){
		List<OrderListDto> list = mapper.getNewOrderList(store_code,order_seq);
		for(OrderListDto li : list) {
			li.setCartList(mapper.getCartList(li.getMerchanuid()));
		}
		return list;
	}
	
//	@Override
//	public void updateOrder(int order_seq,int order_status) {
//		mapper.updateOrder(order_seq, order_status);
//	}
	@Override
	public void updateOrder(OrderListDto dto) {
		mapper.updateOrder(dto);
	}
	
	@Override
	public OrderListDto getOrderListBySeq(int order_seq) {
		return mapper.getOrderListBySeq(order_seq);
	}
	
	@Override
	public List<Integer> getSalesVolumeBySeq(int menu_code, String monthorday, int store_code){
		return mapper.getSalesVolumeBySeq(menu_code, monthorday, store_code);
	}

	@Override
	public List<Integer> getSalesVolumeBySeqAndGender(int menu_code,String monthorday,String user_gender, int store_code){
		return mapper.getSalesVolumeBySeqAndGender(menu_code, monthorday, user_gender, store_code);
	}
}
