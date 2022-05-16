package com.edonald.order.service;

import java.io.IOException;

import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;

public interface OrderService {
	public int calcPriceBurger(CartDto dto);
	public String createOrderNum(String user_phone);
	public String getToken() throws IOException;
	public int paymentInfo(String imp_uid, String access_token)throws IOException ;
	public void payMentCancle(String access_token, String imp_uid, int amount, String reason)throws IOException;
	public OrderNumDto orderNumCheck(String merchanuid);
}
