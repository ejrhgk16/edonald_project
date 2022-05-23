package com.edonald.order.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	public Integer checkMenuStatus(@Param("store_code") int store_code, @Param("menu_code")int menu_code);
	public int checkStoreStatus(int store_code);
	public String getStoreName(int store_code);

}
