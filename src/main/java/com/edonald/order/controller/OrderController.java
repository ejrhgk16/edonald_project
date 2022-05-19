package com.edonald.order.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.service.CertifyService;
import com.edonald.member.service.MemberService;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;
import com.edonald.order.dto.PayInfoDto;
import com.edonald.order.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private CertifyService certifyService;
	@Autowired
	private MemberService memberService;
	
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
		String imp_uid = payInfoDto.getImp_uid();
		String merchanuid = payInfoDto.getMerchant_uid();
		orderListDto.setImp_uid(imp_uid);
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
	
	@GetMapping("/order/search/check")
	public @ResponseBody ResponseEntity<String> merchanuidCheck(@RequestParam String merchanuid){
		OrderListDto orderListDto = orderService.getOrderListDto(merchanuid);
		if(orderListDto == null) {
			return new ResponseEntity<String>("주문번호가 틀렸습니다", HttpStatus.BAD_REQUEST);
		}else {
			return new ResponseEntity<String>(HttpStatus.OK);
		}
	}
	
	@GetMapping("/order/search/trackorder")
	public String ordertrack(@RequestParam String merchanuid, Model model) {
		OrderListDto orderListDto = orderService.getOrderListDto(merchanuid);
		model.addAttribute("orderList", orderListDto);
		model.addAttribute("nologinTarckOrder", "nologin");
		return "/delivery/mypage/trackorder";
	}
	
	@GetMapping("/order/search/orderDetail")
	public String orderfind(@RequestParam String merchanuid, Model model) {
		OrderListDto orderListDto = orderService.getOrderInfo(merchanuid);
		model.addAttribute("orderListDto", orderListDto);
		model.addAttribute("memberOrderFind", "find");
		return "/delivery/order/receipt";
	}
	
	@GetMapping("/order/nologin/phonechek")
	public String phonechek() {
		return "/delivery/order/noLoginOrder/checkphone";
	}
	@GetMapping("/order/nologin/certifyNum")
	public @ResponseBody void checkPhonePage(@RequestParam String phoneNum, @RequestParam String name, HttpServletRequest req) {
		MemberDto memberDto = new MemberDto();
		System.out.println(phoneNum);
		System.out.println(name);
		memberDto.setUser_phone(phoneNum);
		memberDto.setUser_name(name);
		
		HttpSession session= req.getSession();
		String certifyNum = certifyService.certifyPhone(memberDto.getUser_phone());
		System.out.println(certifyNum);
		memberDto.setCertifyNum(certifyNum);
		session.setAttribute("noLoginMemberDto", memberDto);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/delivery/order/chekcCertifyNum");
	}
	
	@GetMapping("/order/nologin/checkNum")
	public @ResponseBody ResponseEntity<String>checkNum(@RequestParam String certifyNum, HttpSession session){
		MemberDto memberDto = (MemberDto) session.getAttribute("noLoginMemberDto");
		String certifyNumCheck = memberDto.getCertifyNum();
		if(certifyNumCheck.equals(certifyNum)) {
			memberDto.setCertifyNum("ok");
			return new ResponseEntity<String>(HttpStatus.OK);
		}else {
			return new ResponseEntity<String>("인증번호가 다릅니다", HttpStatus.BAD_REQUEST);
		}
	}
	
	@GetMapping("/order/nologin/registerAddress")
	public String registerAddress() {
		return "/delivery/order/noLoginOrder/registerAddress";
	}
	
	@PostMapping("/order/nologin/registerAddress")
	public @ResponseBody ResponseEntity<String> registerAddr(@RequestBody AddressDto addressDto, HttpSession session) {
		MemberDto memberDto = (MemberDto) session.getAttribute("noLoginMemberDto");
		String certifyCheck = memberDto.getCertifyNum();
		if(certifyCheck.equals("ok")) { //정상적으로 문자인증이 되었는지 한번더 체크
			memberDto.setDeliverAddress(addressDto);
			List<StoreDto> nearStoreList = memberService.getNearStoreList(addressDto); 
			if (nearStoreList.isEmpty()) {
				memberDto.setDeliverStore(null);
			}
			for (StoreDto s : nearStoreList) {
				System.out.println("sssss" + s.getStore_address());
				if (s.getStore_delivery() == 1 && s.getStore_status() == 1) {
					System.out.println("ss2222" + s.getStore_address());
					memberDto.setDeliverStore(s);
					break;
				}
			}
			return new ResponseEntity<String>(HttpStatus.OK);
		}else {
			return new ResponseEntity<String>("인증번호가 확인이 안됩니다", HttpStatus.BAD_REQUEST);
		}
		
		
	}
	

	}
	
	
	
