package com.edonald.order.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;
import com.edonald.order.dto.PayInfoDto;
import com.edonald.order.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	int smallOrderCost = 2500;
	int criteriaCost = 13000;
	
	@PostMapping("/order/orderMenu")
	public ModelAndView orderMenu(MenuDto menuDto) {
		System.out.println("ordermenu controller!!");
		System.out.println("menu  " + menuDto.getName());
		ModelAndView mav = new ModelAndView();
		mav.addObject("menuDto", menuDto);
		mav.setViewName("/delivery/order/menu");
		return mav;
	}

	@PostMapping("/order/cart/add")
	public String cartAdd(CartDto cartDto, HttpSession session, Authentication authentication) {

		String menu_type = cartDto.getMenu_type();
		int productPrice = 0;
		
		if (menu_type.equals("burger")) {
			productPrice = orderService.calcPriceBurger(cartDto); //수량, 세트 여부 -> 제품가격 계산
			cartDto.setCalc_price(productPrice);
		}
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		int orignTotalPrice = orderListDto.getTotal_price();
		if(orignTotalPrice == 0 && productPrice < criteriaCost) {//첫 제품추가시 배달비 2500원 플러스
			productPrice += smallOrderCost;
		}
		
		int newTotalPrice = orignTotalPrice + productPrice;
		int deliverCost = orderListDto.getDeliverCost();
		//제품을 2번이상 추가했는데 만삼천원을 처음으로 넘겼을때  2500원마이너스
		if(newTotalPrice >= criteriaCost && deliverCost == smallOrderCost && orignTotalPrice!=0) {
			newTotalPrice -= smallOrderCost;
			orderListDto.setDeliverCost(0);
		}
		
		orderListDto.setTotal_price(newTotalPrice);
		orderListDto.getCartList().add(cartDto);

		return "redirect:/ed/menuPage";
	}
	
	@GetMapping("/order/cart/del")
	public @ResponseBody OrderListDto cartDel(@RequestParam int cartIndex, HttpSession session){
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		List<CartDto> cartList = orderListDto.getCartList();
		int productPrice = cartList.get(cartIndex).getCalc_price();
		int totalPrice = orderListDto.getTotal_price();
		totalPrice -= productPrice;
		int deliverCost = orderListDto.getDeliverCost();
		
		//원래금액이 만삼천 이상이었을때 제품을 삭제하면 만삼천 미만으로 떨어질 :때 2500원 +
		if(totalPrice < criteriaCost && deliverCost == 0 && totalPrice != 0) {
			totalPrice += smallOrderCost;
			orderListDto.setDeliverCost(smallOrderCost);
		}
		
		//장바구니에 제품이 없는경우
		if(totalPrice == smallOrderCost) {
			totalPrice=0;
		}

		orderListDto.setTotal_price(totalPrice);
		cartList.remove(cartIndex);
		orderListDto.setCartList(cartList);
		
		return orderListDto;
	}
	@GetMapping("/order/orderCheck")
	public String orderCheck() {
		return "/delivery/order/order-review-confirmation";
	}

	@GetMapping("/order/payment2")
	public String payment2() {
		return "/delivery/order/order-payment2";
	}
	
	@GetMapping("/order/payment")
	public String payment(HttpSession session, @RequestParam(value="order_comment" ,required = false) String order_comment ) {
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		System.out.println(order_comment + "  ordercomment");
		if(orderListDto.getCupone_code() == null) {
			orderListDto.setFinal_price(orderListDto.getTotal_price());
		}
		orderListDto.setOrder_comment(order_comment);
		return "/delivery/order/order-payment";
	}
	
	@GetMapping("/order/payment/cnum")
	public @ResponseBody OrderListDto createNumber(HttpSession session, @RequestParam String payment_type) {
		OrderListDto dto = (OrderListDto) session.getAttribute("orderListDto");
		dto.setPayment_type(payment_type);
		String orderNum = orderService.createOrderNum(dto.getUser_phone());
		dto.setMerchanuid(orderNum);
		return dto;
	}
	
	@PostMapping("/order/payment/check")
	public  @ResponseBody ResponseEntity<String> paycheck(PayInfoDto payInfoDto, HttpSession session)throws IOException{
		String token = orderService.getToken();
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		int amount = orderService.paymentInfo(payInfoDto.getImp_uid(), token);
		String merchanuid = payInfoDto.getMerchant_uid();
		try {
			if(amount != orderListDto.getFinal_price()) {
				System.out.println("결제금액");
				orderService.payMentCancle(token, payInfoDto.getImp_uid(), amount,  "결제금액 오류");
				return new ResponseEntity<String>("결제금액 오류", HttpStatus.BAD_REQUEST);
			}
			System.out.println("주문번호  " + merchanuid);
			OrderNumDto orderNumDto = orderService.orderNumCheck(merchanuid);
			if(!merchanuid.equals(orderNumDto.getOrder_num())) {
				System.out.println("주문번호");
				orderService.payMentCancle(token, payInfoDto.getImp_uid(), amount,  "주문번호 오류");
				return new ResponseEntity<String>("주문번호 오류", HttpStatus.BAD_REQUEST);
			}
			return new ResponseEntity<String>("주문이 완료되었습니다 !", HttpStatus.OK);
		
		}catch(Exception e) {
			System.out.println("결제그냥");
			e.printStackTrace();
			orderService.payMentCancle(token, payInfoDto.getImp_uid(), amount,  "주문번호 오류");
			return new ResponseEntity<String>("결제 오류", HttpStatus.BAD_REQUEST);
		}
	
	}
	
	@GetMapping("/order/payment/complete")
	public String payComplete(HttpSession session, Model model) {
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		session.removeAttribute("orderListDto");
		orderService.orderComplete(orderListDto);
		model.addAttribute("orderListDto", orderListDto);
		return "/delivery/order/receipt";
	}
	
	@GetMapping("/order/payment/complete3")
	public String payComplete2() {
		return "/delivery/order/receipt";
	}

	}
	
	
	
