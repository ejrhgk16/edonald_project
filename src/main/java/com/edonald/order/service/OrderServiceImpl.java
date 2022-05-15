package com.edonald.order.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.order.dao.OrderMapper;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;
	
	
	@Override
	public int calcPriceBurger(CartDto dto) {

		int price = dto.getCart_product_price();
		String comp_type = dto.getComp_type();
		System.out.println("ct  -- " + comp_type);
		System.out.println("comp1 -- " + dto.getComp1_name());
		int qty = dto.getCart_product_quant();

		if (comp_type.equals("set")) {
			price += 1700;
		}
		if (comp_type.equals("large_set")) {
			price += 2300;
		}
		return price * qty;
	}

	@Override
	public String createOrderNum(String user_phone) {
		Random rnd = new Random();
		String num = "";
		Date date = new Date();
		long timeInMilliSeconds = date.getTime();
		java.sql.Date today = new java.sql.Date(timeInMilliSeconds);
		String orderDate = String.valueOf(today);
		num += orderDate;
		
		OrderNumDto orderNumDto = new OrderNumDto();
		orderNumDto.setOrder_date(today);
		orderNumDto.setUser_phone(user_phone);
		while (true) {
			for (int i = 0; i < 5; i++) {
				if (rnd.nextBoolean()) {
					num += (char) ((int) (rnd.nextInt(26)) + 97);
				} else {
					num += (rnd.nextInt(10));
				}
			}
			orderNumDto.setOrder_num(num);
			if(orderMapper.checkOrderNum(orderNumDto)==null) {
				orderMapper.insertOrderNum(orderNumDto);
				break;
			}
		}
		return num;
	}
	
}
