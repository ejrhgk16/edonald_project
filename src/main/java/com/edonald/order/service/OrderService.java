package com.edonald.order.service;

import java.io.IOException;
import java.util.List;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;

public interface OrderService {
	public int calcPriceBurger(CartDto dto);
	public int calcPriceTogetherPack(CartDto dto);
	public String createOrderNum(String user_phone);
	public String getToken() throws IOException;
	public int paymentInfo(String imp_uid, String access_token)throws IOException ;
	public void payMentCancle(String access_token, String imp_uid, int amount, String reason)throws IOException;
	public OrderNumDto orderNumCheck(String merchanuid);
	public void orderComplete(OrderListDto dto);//주문정보를 디비에 저장
	public OrderListDto getOrderInfo(String merchanuid);
	public OrderListDto getOrderListDto(String merchanuid);
	public List<MenuDto>getBurgerLSetSideList();
	public List<MenuDto>getBurgerSetSideList();
	public List<MenuDto>getDrinkList();
	public List<MenuDto>getTogetherBurgerList();
	public List<MenuDto>getTogetherSideList();	
	public List<MenuDto>getTogetherSourceList();	
	
}
