package com.edonald.deliver.controller;

import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.deliver.service.DeliveryMenuService;
import com.edonald.deliver.service.DeliveryService;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.PromotionDto;
import com.edonald.hadmin.serivce.FileUploadService;
import com.edonald.member.dto.AddressDto;
import com.edonald.member.dto.AuthenticationCodeDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;
import com.edonald.member.service.CertifyService;
import com.edonald.member.service.MemberService;
import com.edonald.oauthConfig.NaverLogin;
import com.edonald.order.dto.OrderListDto;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class DeliverController {
	@Autowired
	NaverLogin naverlogin;
	@Autowired
	private DeliveryMenuService dService;	
	@Autowired
	private DeliveryService service;
	@Autowired
	private MemberService mService;
	@Autowired
	private CertifyService cService;
	
	@GetMapping("/ed/deliverHome")
	public String deliverhome(Model model, HttpServletRequest req, @RequestParam(value="errorMsg", required = false)String errorMsg) {
		HttpSession session = req.getSession();
		String naverUrl = naverlogin.getAuthorizationUrl(session);
		List<PromotionDto> list = service.getPromotionList();
		for(PromotionDto li : list) {
			li.setP_img("https://edonaldfile.s3.ap-northeast-2.amazonaws.com/" +li.getP_img());
		}
		model.addAttribute("naverUrl", naverUrl);
		model.addAttribute("list",list);
		
		model.addAttribute("errorMsg", errorMsg);
		return "/delivery/deliverhome/deliverhome";
	}

	

	@GetMapping("/ed/menuPage")
	public String menuPage(Authentication authentication, HttpSession session, Model model, @RequestParam(value="backtype", required = false)String backtype ) {
		if(authentication != null && session.getAttribute("orderListDto") == null) {
			 SecurityUser user = (SecurityUser)authentication.getPrincipal();
			 MemberDto memberDto = user.getMemberDto();
			 if(memberDto.getRole().equals("ROLE_MEMBER")) {
			 String user_address = memberDto.getDeliverAddress().getRoad_address();
			 user_address = user_address + " - "+ memberDto.getDeliverAddress().getDetail_address();
			OrderListDto orderListDto  = new OrderListDto();
			orderListDto.setUser_name(memberDto.getUser_name());
			orderListDto.setUser_address(user_address);
			orderListDto.setStore_code(memberDto.getDeliverStore().getStore_code());
			orderListDto.setUser_email(memberDto.getUser_email());
			orderListDto.setUser_type(1); //1회원 2 비회원
			orderListDto.setUser_phone(memberDto.getUser_phone());
			orderListDto.setDeliverCost(2500);
			orderListDto.setPostcode(memberDto.getDeliverAddress().getPostcode());
			session.setAttribute("orderListDto", orderListDto);
			 }else if(memberDto.getRole().equals("ROLE_SADMIN")){//admin 처리
				 OrderListDto orderListDto  = new OrderListDto();
				 orderListDto.setStore_code(memberDto.getStore_code());
				 session.setAttribute("orderListDto", orderListDto);
			}else if(memberDto.getRole().equals("ROLE_HADMIN")) {
				OrderListDto orderListDto  = new OrderListDto();
				session.setAttribute("orderListDto", orderListDto);
			}
		}
		if(session.getAttribute("noLoginMemberDto") != null && session.getAttribute("orderListDto") == null) {
			MemberDto noLoginMemberDto = (MemberDto) session.getAttribute("noLoginMemberDto");
			 String user_address = noLoginMemberDto.getDeliverAddress().getRoad_address();
			 user_address = user_address + " - "+ noLoginMemberDto.getDeliverAddress().getDetail_address();
				OrderListDto orderListDto  = new OrderListDto();
				orderListDto.setUser_name(noLoginMemberDto.getUser_name());
				orderListDto.setUser_address(user_address);
				orderListDto.setStore_code(noLoginMemberDto.getDeliverStore().getStore_code());
				orderListDto.setUser_email(noLoginMemberDto.getUser_email());
				orderListDto.setUser_type(2); //1회원 2 비회원
				orderListDto.setUser_phone(noLoginMemberDto.getUser_phone());
				orderListDto.setDeliverCost(2500);
				orderListDto.setPostcode(noLoginMemberDto.getDeliverAddress().getPostcode());
				session.setAttribute("orderListDto", orderListDto);
		}
		System.out.println("backtype" + backtype);
		model.addAttribute("backtype", backtype);
		return "/delivery/deliverhome/deliverMenu";
	}
	
	@RequestMapping(value= "/ed/menuPage.do", method = RequestMethod.GET)
	public @ResponseBody List<MenuDto> menuPageDo(String type, String daypartId, HttpSession session) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("type", type);
		map.put("daypartId", daypartId);
		List<MenuDto> mList = dService.mList(map);
		
		OrderListDto orderListDto = (OrderListDto) session.getAttribute("orderListDto");
		
		if(orderListDto != null) {
			int store_code = orderListDto.getStore_code();
			List<Integer> bList = dService.getBlockMenuList(store_code);
			for (Integer block : bList) {
				for(MenuDto list : mList) {
					if(block == list.getSeq()) {
						list.setBlock_status(1);
						break;
					}
				}
			}
		}

		
		
		return mList;
	}
	

	@RequestMapping(value= "/ed/PIPP", method = RequestMethod.GET)
	public String personalInformationProcessingPolicy() {
		return "/delivery/info/userInfo";
	}
	@RequestMapping(value= "/ed/TaC", method = RequestMethod.GET)
	public String termsAndConditions() {
		return "/delivery/info/useInfo";
	}
	
	@GetMapping("/ed/store/checkStatus")
	public @ResponseBody  ResponseEntity<String>checkStatus(Authentication authentication, HttpSession session){
			if(authentication != null) {
				SecurityUser user = (SecurityUser) authentication.getPrincipal();
				 String role = user.getMemberDto().getRole();
				if(user.getMemberDto().getDeliverStore() != null || !role.equals("ROLE_MEMBER") ){
					return new ResponseEntity<String>(HttpStatus.OK);
				}else {
					return new ResponseEntity<String>("로그인사용자의 배달가능 지점이없음", HttpStatus.BAD_REQUEST);
				}
			}
			
			if(session.getAttribute("noLoginMemberDto") != null) {

				MemberDto noLoginMem = (MemberDto) session.getAttribute("noLoginMemberDto");
					if(noLoginMem.getDeliverStore() != null) {
						return new ResponseEntity<String>(HttpStatus.OK);
					}else {
						return new ResponseEntity<String>("비로그인사용자의 배달가능 지점이없음", HttpStatus.BAD_REQUEST);
					}
			}

			return new ResponseEntity<String>("그냥메뉴만봄", HttpStatus.OK);

	}
	
	@GetMapping("/ed/logincheck")
	public @ResponseBody  ResponseEntity<String>checkStatus(Authentication authentication){
		if(authentication == null) {
			return new ResponseEntity<String>("로그인 해주세요", HttpStatus.BAD_REQUEST); 
		}else {
			return new ResponseEntity<String>(HttpStatus.OK);
		}
	}
	
	@GetMapping("/ed/ect/question")
	public String question() {
		return "/delivery/info/question";
	}
	
	@GetMapping("/ed/ect/useInfo")
	public String useInfo() {
		return "/delivery/info/useInfo";
	}
	
	@GetMapping("/ed/ect/userInfo")
	public String userInfo() {
		return "/delivery/info/userInfo";
	}
	

	@GetMapping("/ed/findpassword")
	public String findpassword(){
		return "delivery/join/findPassword";
	}
	
	@ResponseBody
	@GetMapping("/ed/findpasswordCheck.do")
	public ResponseEntity<String> findpasswordCheckDo(String user_email, HttpServletRequest req){
		MemberDto memberDto =  mService.getMemberById(user_email);
		AuthenticationCodeDto dto = new AuthenticationCodeDto();
		dto.setUser_email(user_email);
		dto.setType("find_pass");
		if(memberDto == null) {
			return new ResponseEntity<String>("잘못된 이메일 입니다.",HttpStatus.BAD_REQUEST);
		}else if( cService.getCountAuthentication(dto) > 5) {
			log.info("금일 인증 횟수 초과 : "+"url : "+req.getRequestURL() +" ip: " + req.getRemoteAddr() );
			return new ResponseEntity<String>("금일 인증 횟수를 초과하였습니다.",HttpStatus.BAD_REQUEST);
		}else {
			// CertifyService << 인증코드 만들어서 발송 
			System.out.println(memberDto.getUser_phone());
			int code = Integer.parseInt(cService.certifyPhone(memberDto.getUser_phone(),dto));

			return new ResponseEntity<String>(HttpStatus.OK);
		}
	}
	
	@ResponseBody
	@GetMapping("/ed/findpasswordCheckCode.do")
	public ResponseEntity<String> findpasswordCheckCodeDo(int authenticationNum){

		// db 가서 인증코드 맞는지 받아오고.
		AuthenticationCodeDto dto = new AuthenticationCodeDto();
		dto.setCode(authenticationNum);
		dto.setType("find_pass");
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
	        	String tempPassword = cService.changePassword(list.get(0).getUser_email());
	        	System.out.println(tempPassword);
	        	cService.deleteAuthenticationRecord(list.get(0).getUser_email());
	    		return new ResponseEntity<String>(tempPassword,HttpStatus.OK);	        	
	        }else {
	        	return new ResponseEntity<String>("만료된 코드입니다.",HttpStatus.BAD_REQUEST);
	        }
		}else {
			return new ResponseEntity<String>("WrongCode",HttpStatus.BAD_REQUEST);
		}
	}

	
}

