package com.edonald.order.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.service.OrderService;

public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@PostMapping("/member/orderMenu")
	public ModelAndView orderMenu(MenuDto menuDto) {
		System.out.println("ordermenu controller!!");
		System.out.println("menu  " + menuDto.getName());
		ModelAndView mav = new ModelAndView();
		mav.addObject("menuDto", menuDto);
		mav.setViewName("/delivery/order/menu");
		return mav;
	}

	@PostMapping("/member/cartAdd")
	public String cartAdd(CartDto cartDto, HttpSession session, Authentication authentication) {

		String menu_type = cartDto.getMenu_type();
		int plusPrice = 0; 
		if (menu_type.equals("burger")) {
			plusPrice = orderService.calcPriceBurger(cartDto); //수량, 세트 여부 -> 제품가격 계산
			cartDto.setCalc_price(plusPrice);
		}
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		int orignTotalPrice = orderListDto.getTotal_price();
		int newTotalPrice = orignTotalPrice + plusPrice;
		if(newTotalPrice > 13000) {
			orderListDto.setDeliverCost(0);
		}
		newTotalPrice += orderListDto.getDeliverCost();
		orderListDto.setTotal_price(newTotalPrice);
		
		orderListDto.getCartList().add(cartDto);

		return "redirect:/ed/menuPage";
	}
	
}
