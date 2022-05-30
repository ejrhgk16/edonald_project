package com.edonald.hadmin.serivce;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dao.HadminMapper;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.order.dao.OrderMapper;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;

@Service
public class MakeDateServiceImpl implements MakeDateService {
	
	@Autowired
	HadminMapper mapper;
	@Autowired
	OrderMapper oMapper;
	
	//RandomDate
	@Override
	public String makeOrderNum() {

		return null;

	}
	
	@Override
	public OrderNumDto checkOrderNum(String order_num) {
		return oMapper.checkOrderNum(order_num);
	}
	@Override
	public List<Integer> getMenuSeqList(){
		return mapper.getMenuSeqList();
	}
	@Override
	public MenuDto getMenuByCode(int code){
		return mapper.getMenuByCode(code);
	}
	
	@Override
	public void insertOrderInfo(OrderListDto dto) {
		mapper.insertOrderInfo(dto);
	}
	@Override
	public void insertCartInfo(CartDto dto) {
		mapper.insertCartInfo(dto);
	}
}
