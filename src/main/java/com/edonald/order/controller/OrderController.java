package com.edonald.order.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Calendar;
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
import com.edonald.member.controller.MemberController;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.AuthenticationCodeDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.service.CertifyService;
import com.edonald.member.service.MemberService;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;
import com.edonald.order.dto.PayInfoDto;
import com.edonald.order.service.OrderService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private CertifyService certifyService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private CertifyService cService;
	
	int smallOrderCost = 2500;
	int criteriaCost = 13000;
	int cokeprice = 2100;
	int bigmacprice = 5400;

	
	@PostMapping("/order/orderMenu")
	public ModelAndView orderMenu(MenuDto menuDto) {
		ModelAndView mav = new ModelAndView();
		System.out.println(menuDto.getName()+menuDto.getS_price());
		String type = menuDto.getType();
		if(type.equals("burger") || type.equals("emorning")) {
			List<MenuDto>largesetsidelist= orderService.getBurgerLSetSideList();
			List<MenuDto>setsidelist = orderService.getBurgerSetSideList();
			List<MenuDto>setdrinklist = orderService.getDrinkList();
			for(MenuDto drink : setdrinklist) {
				if(drink.getPrice() > cokeprice) {
					int plusprice = drink.getPrice() - cokeprice;
					String name = drink.getName() + " (+"+plusprice+")";
					drink.setShowname(name);
				}else {
					drink.setShowname(drink.getName());
				}
			}
			mav.addObject("largesetsidelist", largesetsidelist);
			mav.addObject("setsidelist", setsidelist);
			mav.addObject("setdrinklist",setdrinklist);
			mav.setViewName("/delivery/order/menu");
			
		}else if(type.equals("drink") || type.equals("side") || type.equals("dessert")) {
			mav.setViewName("/delivery/order/menu_noset");
		}else if(type.equals("package")) {
			List<MenuDto>burgerlist = orderService.getTogetherBurgerList();
			List<MenuDto>sidelist = orderService.getTogetherSideList();
			List<MenuDto>drinklist = orderService.getDrinkList();
			List<MenuDto>sourcelist = orderService.getTogetherSourceList();
			for(MenuDto burger : burgerlist) {
				System.out.println(burger.getPrice());
				if(burger.getPrice() > bigmacprice) {
					int plusprice = burger.getPrice() - bigmacprice;
					String name = burger.getName() + " (+"+plusprice+")";
					burger.setShowname(name);
				}else {
					burger.setShowname(burger.getName());
				}
			}
			for(MenuDto drink : drinklist) {
				if(drink.getPrice() > cokeprice) {
					int plusprice = drink.getPrice() - cokeprice;
					String name = drink.getName() + " (+"+plusprice+")";
					drink.setShowname(name);
				}else {
					drink.setShowname(drink.getName());
				}
			}
			mav.addObject("burgerlist", burgerlist);
			mav.addObject("sidelist", sidelist);
			mav.addObject("drinklist", drinklist);
			mav.addObject("sourcelist", sourcelist);
			mav.setViewName("/delivery/order/menu_together");
		}
		
		mav.addObject("menuDto", menuDto);
		return mav;
	}

	@PostMapping("/order/cart/add")
	public String cartAdd(CartDto cartDto, HttpSession session, Authentication authentication, Model model, HttpServletRequest req) {
		log.info("cartadd "+cartDto.getCart_product_code() +  " url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());
		String menu_type = cartDto.getMenu_type();
		int productPrice = 0;
		
		if (menu_type.equals("burger") || menu_type.equals("emorning")) {
			productPrice = orderService.calcPriceBurger(cartDto); //수량, 세트 여부 -> 제품가격 계산
			cartDto.setCalc_price(productPrice);
		}else if(menu_type.equals("package")) {
			productPrice = orderService.calcPriceTogetherPack(cartDto);
			cartDto.setCalc_price(productPrice);
		}
		else {
			productPrice = cartDto.getCart_product_price() * cartDto.getCart_product_quant();
			cartDto.setCalc_price(productPrice);
		}
		
		
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		int orignTotalPrice = orderListDto.getTotal_price();
		if(orignTotalPrice == 0 && productPrice < criteriaCost) {//첫 제품추가시 배달비 2500원 플러스
			productPrice += smallOrderCost;
		}
		if(orignTotalPrice == 0 && productPrice > criteriaCost) {
			orderListDto.setDeliverCost(0);
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
		
		String backtype = cartDto.getMenu_type();
		return  "redirect:/ed/menuPage?backtype="+backtype;
	}
	
	@GetMapping("/order/cart/del")
	public @ResponseBody OrderListDto cartDel(@RequestParam int cartIndex, HttpSession session){
		
		System.out.println("zkxmindex"  + cartIndex);
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

	
	@GetMapping("/order/payment")
	public String payment(HttpSession session, @RequestParam(value="order_comment" ,required = false) String order_comment,  HttpServletRequest req ) {
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");

		if(orderListDto.getCupone_code() == null) {
			orderListDto.setFinal_price(orderListDto.getTotal_price());
		}
		orderListDto.setOrder_comment(order_comment);
		return "redirect:/order/payment/page";
	}
	@GetMapping("/order/payment/page")
	public String paymentPage(HttpSession session) {
		if(session.getAttribute("orderListDto") == null) {
			return "/delivery/deliverhome/deliverhome";
		}
		return "/delivery/order/order-payment";
	}
	
	@GetMapping("/order/payment/cnum")
	public @ResponseBody ResponseEntity<OrderListDto> createNumber(HttpSession session, @RequestParam String payment_type) {
		OrderListDto dto = (OrderListDto) session.getAttribute("orderListDto");
		if(dto.getUser_type() == 2 && !payment_type.equals("온라인결제")) {
			return new ResponseEntity<OrderListDto>( HttpStatus.BAD_REQUEST);
		}
		dto.setPayment_type(payment_type);
		String orderNum = orderService.createOrderNum(dto.getUser_phone());
		dto.setMerchanuid(orderNum);
		System.out.println(orderNum);
		
		return new ResponseEntity<OrderListDto>(dto, HttpStatus.OK);
	}
	
	@PostMapping("/order/payment/check")
	public  @ResponseBody ResponseEntity<String> paycheck(PayInfoDto payInfoDto, HttpSession session, HttpServletRequest req)throws IOException{
		String token = orderService.getToken();
		
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		int amount = orderService.paymentInfo(payInfoDto.getImp_uid(), token);
		String imp_uid = payInfoDto.getImp_uid();
		String merchanuid = payInfoDto.getMerchant_uid();
		orderListDto.setImp_uid(imp_uid);
		try {
			if(amount != orderListDto.getFinal_price()) {

				orderService.payMentCancle(token, payInfoDto.getImp_uid(), amount,  "결제금액 오류");
				log.info("orderpayment fail "+ orderListDto.getPayment_type()+" 결제금액 오류  "+ orderListDto.getMerchanuid() +" imp_uid: "+ orderListDto.getImp_uid()+" url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());
				return new ResponseEntity<String>("결제금액 오류", HttpStatus.BAD_REQUEST);

			}

			OrderNumDto orderNumDto = orderService.orderNumCheck(merchanuid);
			if(!merchanuid.equals(orderNumDto.getOrder_num())) {

				orderService.payMentCancle(token, payInfoDto.getImp_uid(), amount,  "주문번호 오류");
				log.info("orderpayment fail "+ orderListDto.getPayment_type()+" 주문번호 오류  "+ orderListDto.getMerchanuid() +" imp_uid: "+ orderListDto.getImp_uid()+" url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());
				return new ResponseEntity<String>("주문번호 오류", HttpStatus.BAD_REQUEST);
			}
			log.info("orderpayment success "+ orderListDto.getPayment_type()+" "+ orderListDto.getMerchanuid() +" imp_uid: "+ orderListDto.getImp_uid()+ " url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());
			return new ResponseEntity<String>("주문이 완료되었습니다 !", HttpStatus.OK);
		
		}catch(Exception e) {
			orderService.payMentCancle(token, payInfoDto.getImp_uid(), amount,  "주문번호 오류");
			log.info("orderpayment fail "+orderListDto.getPayment_type()+" 결제오류  "+ orderListDto.getMerchanuid() +" imp_uid: "+ orderListDto.getImp_uid()+ " url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());
			return new ResponseEntity<String>("결제 오류", HttpStatus.BAD_REQUEST);
		}	
	
	}
	
	@GetMapping("/order/payment/complete")
	public @ResponseBody ResponseEntity<String> payComplete(HttpSession session, Model model, HttpServletRequest req) throws IOException{
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		String paytype = orderListDto.getPayment_type();
		log.info("ordercomplete "+orderListDto.getPayment_type()+ orderListDto.getMerchanuid() + " url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());
			try {
				//주문 예외사항들 체크 해줘야함 가게 상태, 배달 시간, 등등
				orderService.orderComplete(orderListDto);
			} catch (Exception e) {
				if(paytype.equals("온라인결제")) {
					String token = orderService.getToken();
					String imp_uid = orderListDto.getImp_uid();
					int amount = orderService.paymentInfo(imp_uid, token);
					orderService.payMentCancle(token, imp_uid, amount, e.getMessage());
					log.info("orderfail "+e.getMessage() +" "+orderListDto.getPayment_type()+ orderListDto.getMerchanuid() + " url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());

				}
				return new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
		return new ResponseEntity<String>(HttpStatus.OK);

	}
	
	@GetMapping("/order/payment/result")
	public String paymentResult(HttpSession session, Model model) {
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		String store_name = orderService.getStoreName(orderListDto.getStore_code());
		model.addAttribute("store_name", store_name);
		model.addAttribute("orderListDto", orderListDto);
		session.removeAttribute("orderListDto");
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
		String store_name = orderService.getStoreName(orderListDto.getStore_code());
		model.addAttribute("store_name", store_name);
		model.addAttribute("orderListDto", orderListDto);
		model.addAttribute("memberOrderFind", "find");
		return "/delivery/order/receipt";
	}
	
	@GetMapping("/order/nologin/phonechek")
	public String phonechek() {
		return "/delivery/order/noLoginOrder/checkphone";
	}
	@GetMapping("/order/nologin/certifyNum")
	public @ResponseBody ResponseEntity<String> checkPhonePage(@RequestParam String phoneNum, @RequestParam String name, HttpServletRequest req) {
		MemberDto memberDto = new MemberDto();
		memberDto.setUser_phone(phoneNum);
		memberDto.setUser_name(name);
		
		AuthenticationCodeDto dto = new AuthenticationCodeDto();
		dto.setUser_email(phoneNum);
		dto.setType("order_nologin");
		if (certifyService.getCountAuthentication(dto) > 5) {
			System.out.println("인증횟수 초과");
			return new ResponseEntity<String>("인증 횟수 초과", HttpStatus.BAD_REQUEST);
		}else {
			HttpSession session= req.getSession();
			String certifyNum = certifyService.certifyPhone(memberDto.getUser_phone(),dto);
			memberDto.setCertifyNum(certifyNum);
			session.setAttribute("noLoginMemberDto", memberDto);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/delivery/order/chekcCertifyNum");
			return new ResponseEntity<String>(HttpStatus.OK);
		}
	}
	
	@GetMapping("/order/nologin/checkNum")
	public @ResponseBody ResponseEntity<String>checkNum(@RequestParam String certifyNum, HttpSession session){
		AuthenticationCodeDto dto = new AuthenticationCodeDto();
		
		MemberDto mDto = (MemberDto) session.getAttribute("noLoginMemberDto");
		dto.setUser_email(mDto.getUser_email());
		
		int count = certifyService.getCountAuthentication(dto);
		if ( count > 5) {
			return new ResponseEntity<String>("인증가능횟수가 초과되었습니다", HttpStatus.BAD_REQUEST);
		}
		// db 가서 인증코드 맞는지 받아오고.
		dto.setUser_email(null);
		dto.setCode(Integer.parseInt(certifyNum));
		dto.setType("order_nologin");
		List<AuthenticationCodeDto> list = cService.getAuthenticationCodeByCode(dto);
		// CODE 확인
		if(list.size() == 1) {
			// db에서 시간값 ㅣ 3분 + now() (cal클래스) 비교해서 if 문 "만료된 인증" 
			Timestamp dbDate = list.get(0).getDate();
			Calendar cal1 = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();
	        cal1.setTime(new java.util.Date());
	        cal2.setTime(dbDate);
	        cal2.add(Calendar.MINUTE, 5); //5분안에 인증
	        if( cal1.before(cal2) ) {
	        	MemberDto memberDto = (MemberDto) session.getAttribute("noLoginMemberDto");
	        	cService.deleteAuthenticationRecord(list.get(0).getUser_email());
	        	memberDto.setCertifyNum("ok");
	    		return new ResponseEntity<String>(HttpStatus.OK);	        	
	        }else {
	        	return new ResponseEntity<String>("만료된 코드입니다.",HttpStatus.BAD_REQUEST);
	        }
		}else {
			return new ResponseEntity<String>("WrongCode",HttpStatus.BAD_REQUEST);
		}
		
		
//		MemberDto memberDto = (MemberDto) session.getAttribute("noLoginMemberDto");
//		String certifyNumCheck = memberDto.getCertifyNum();
//		if(certifyNumCheck.equals(certifyNum)) {
//			memberDto.setCertifyNum("ok");
//			return new ResponseEntity<String>(HttpStatus.OK);
//		}else {
//			return new ResponseEntity<String>("인증번호가 다릅니다", HttpStatus.BAD_REQUEST);
//		}
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
	
	@GetMapping("/order/checkSession")
	public @ResponseBody ResponseEntity<String>checkSession(Authentication authentication, HttpSession session, @RequestParam String seq){
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		try {
			
			orderService.checkTime(Integer.parseInt(seq), timestamp);
			if(authentication != null) {
				return new ResponseEntity<String>(HttpStatus.OK);
			}else if(session.getAttribute("noLoginMemberDto") != null) {
				return new ResponseEntity<String>(HttpStatus.OK);
			}else {
				return new ResponseEntity<String>("로그인 해주세요", HttpStatus.BAD_REQUEST);
			}
		} catch (Exception e) {
			return new ResponseEntity<String>(e.getMessage() ,HttpStatus.BAD_REQUEST);
		}

	}
	
	
	
	

	}
	
	
	
