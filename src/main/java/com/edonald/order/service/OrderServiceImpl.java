package com.edonald.order.service;

import org.springframework.stereotype.Service;

import com.edonald.order.dto.CartDto;

@Service
public class OrderServiceImpl implements OrderService {

	@Override
	public int calcPriceBurger(CartDto dto) {
		
		//제품 수량 증가시킬때 hidden값으로 list의 번호를 같이 넘겨줌
		//장바구니 제품을 삭제할 때 list를 다시 그려줌
		int price = dto.getCart_product_price();
		String comp_type = dto.getComp_type();
		System.out.println("ct  -- "+comp_type);
		System.out.println("comp1 -- " + dto.getComp1_name());
		int qty = dto.getCart_product_quant();
		
		if(comp_type.equals("set")) {price += 1700;}
		if(comp_type.equals("large_set")) {price += 2300;}
		return price*qty;	
	}

}
