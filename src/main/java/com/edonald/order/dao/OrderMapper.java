package com.edonald.order.dao;

import java.util.List;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;

public interface OrderMapper {
	public OrderNumDto checkOrderNum(String order_num);
	public void insertOrderNum(OrderNumDto dto);
	public void insertOrderInfo(OrderListDto dto);
	public void insertCartInfo(CartDto cartDto);
	public OrderListDto getOrderInfoByUid(String merchanuid);
	public List<CartDto>getCartListByUid(String merchanuid);
	public List<MenuDto>getBurgerLSetSideList();
	public List<MenuDto>getBurgerSetSideList();
	public List<MenuDto>getDrinkList();
	public int getDrinkPrice(String drinkname);
	public List<MenuDto>getTogetherPackBurgerList();
	public List<MenuDto>getTogetherPackSideList();
	public List<MenuDto>getTogetherPackSourceList();
	public int getBurgerPrice(String burgername);

}
