package com.edonald.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {

	@RequestMapping("kr/menu")
	public String menu() {
		return "delivery/order/menu";
	}
	
	
	@RequestMapping("kr/order-review-confirmation.do")
	public String orderReviewConfirmation() {
		return "delivery/order/order-review-confirmation";
	}
	
	/*로그인 상태면 1번으로 아니면 2번으로*/
	@RequestMapping("kr/order-payment.do")
	public String orderPayment() {
		return "delivery/order/order-payment";
	}
	
	@RequestMapping("kr/order-payment2.do")
	public String orderPayment2() {
		return "delivery/order/order-payment2";
	}
	
	@RequestMapping("kr/result.do")
	public String result() {
		return "delivery/order/result";
	}
	
	@RequestMapping("kr/receipt.do")
	public String receipt() {
		return "delivery/order/receipt";
	}
	
}
