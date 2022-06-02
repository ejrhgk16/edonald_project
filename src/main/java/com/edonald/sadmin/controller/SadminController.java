package com.edonald.sadmin.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edonald.hadmin.dto.ChartSearchDto;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;
import com.edonald.member.service.MemberService;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.service.OrderService;
import com.edonald.sadmin.service.SadminMenuService;
import com.edonald.sadmin.service.SadminService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class SadminController {
	
	@Autowired
	private SadminMenuService sService;
	@Autowired
	private SadminService service;
	@Autowired
	private MemberService mService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@RequestMapping( value = "/sadmin/test" , method = RequestMethod.GET)
	public String testMenu(Model model,String type,String store) {
		model.addAttribute("list",sService.listAll(type));
		model.addAttribute("store",store);
		return "admin/sadmin/menu/burgerNset";
	}	

	
	//updatePage
	@RequestMapping(value = "/sadmin/Msadmin", method = RequestMethod.GET)
	public String sadminModifySadmin(Authentication authentication) {
		return "admin/sadmin/Modify/settingmine";
	}
	@ResponseBody
	@RequestMapping( value ="/sadmin/modifyMember.do",method = RequestMethod.POST)
	public void hadminModifyMember(Authentication authentication,MemberDto dto) {
		System.out.println(dto.getUser_email()+dto.getUser_password());
		mService.changeAccountByAdmin(dto);
		SecurityUser user = (SecurityUser)authentication.getPrincipal();
		user.getMemberDto().setUser_phone(dto.getUser_phone());
		if(dto.getUser_password() != null) {
			user.getMemberDto().setUser_password(mService.getMemberById(dto.getUser_email()).getUser_password());
		}
	}
	@ResponseBody
	@RequestMapping( value ="/sadmin/checkMember.do",method = RequestMethod.POST)
	public ResponseEntity<String> hadminCheckMember(Authentication authentication, @RequestParam("user_password") String user_password) {
		SecurityUser user = (SecurityUser)authentication.getPrincipal();
		MemberDto dto = user.getMemberDto();
		if(!mService.checkPassword(dto, user_password)) {
			return new ResponseEntity<String>("기존 비밀번호가 틀렸습니다.",HttpStatus.BAD_REQUEST);
		}else {
			return new ResponseEntity<String>(HttpStatus.OK);
		}
	}
	
//	@ResponseBody
//	@RequestMapping( value="/sadmin/updateStore.do", method = RequestMethod.GET)
//	public void sadminUpdateStoreDo() {
//		
//	}
//	
	@RequestMapping(value = "/sadmin/menu", method = RequestMethod.GET)
	public String sadminMenu(Model model,String type, Authentication authentication) {
		SecurityUser user = (SecurityUser)authentication.getPrincipal();
		MemberDto sessionDto = (MemberDto) user.getMemberDto();
		String store_code = Integer.toString(sessionDto.getStore_code());
		List<Integer> listBlock = sService.listBlock(store_code);
		List<MenuDto> listAll = sService.listAll(type);
		for(Integer seq : listBlock) {
			for(MenuDto dto : listAll) {
				if(dto.getSeq() == seq) {
					dto.setBlock_status(1);
					break;
				}
			}
		}
		model.addAttribute("list",listAll);
		model.addAttribute("type",type);
		return "admin/sadmin/menu/burgerNset";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/sadmin/blockMenu.do", method = RequestMethod.GET)
	public void sadminBlockList(Authentication authentication,@RequestParam("seq") String seq) {
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto sessionDto = (MemberDto) user.getMemberDto();
		String store = Integer.toString(sessionDto.getStore_code());
		Map<String, String> map = new HashMap<String, String>();
		map.put("store", store);
		map.put("seq", seq);
		sService.insertBlock(map);
	}
	@ResponseBody
	@RequestMapping(value = "/sadmin/blockMenu.do", method = RequestMethod.DELETE)
	public void sadminUnBlockList(Authentication authentication,@RequestParam("seq") String seq) {
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto sessionDto = (MemberDto) user.getMemberDto();
		String store = Integer.toString(sessionDto.getStore_code());
		Map<String, String> map = new HashMap<String, String>();
		map.put("store", store);
		map.put("seq", seq);
		sService.deleteBlock(map);
	}
	// 영업 중 - 영업 종료
	@ResponseBody
	@RequestMapping(value = "/sadmin/storeStatus.do", method = RequestMethod.GET)
	public void sadminStoreStatus(Authentication authentication,@RequestParam("store_status") String store_status) {
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto sessionDto = (MemberDto) user.getMemberDto();
		String store_code = Integer.toString(sessionDto.getStore_code());
		user.getMemberDto().getDeliverStore().setStore_status(Integer.parseInt(store_status));
		Map<String, String> map = new HashMap<String, String>();
		map.put("store_status", store_status);
		map.put("store_code", store_code);
		service.updateStoreStatus(map);
	}
	
	@RequestMapping( value = "/sadmin/order" , method = RequestMethod.GET)
	public String sadminOrder(Authentication authentication,Model model) { 
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto sessionDto = (MemberDto) user.getMemberDto();
		int store_code = sessionDto.getStore_code();
		List<OrderListDto> list = service.getOrderList(store_code);
		

		model.addAttribute("list",list);
		return "admin/sadmin/order/order";
	}
	
	@ResponseBody
	@RequestMapping( value = "/sadmin/order.do" , method = RequestMethod.GET)
	public void sadminOrderDo(Model model,@RequestParam int order_seq, @RequestParam int order_status,@RequestParam(value = "wait_time" , required = false) String wait_time, HttpServletRequest req) throws IOException {
		OrderListDto dto = service.getOrderListBySeq(order_seq);
		log.info("sadmin"+ dto.getMerchanuid()+ " update orderstatus: "+order_status+ " url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());
		if(wait_time != null) {

			Calendar cal = Calendar.getInstance();
			cal.setTime(dto.getOrder_date());
			cal.add(Calendar.MINUTE, Integer.parseInt(wait_time));
			Timestamp delivery_time = new Timestamp(cal.getTimeInMillis());
			dto.setOrder_status(order_status);
			dto.setDelivery_time(delivery_time);
			service.updateOrder(dto);
		}else if(order_status == 5){
			Date date = new Date();
			Timestamp ts = new Timestamp(date.getTime());
			dto.setOrder_status(order_status);
			dto.setDelivery_time(ts);
			service.updateOrder(dto);
		}else if(order_status==1) {
			String paytype = dto.getPayment_type();
			if(paytype.equals("온라인결제")) {
				String imp_uid = dto.getImp_uid();
				String token = orderService.getToken();
				int amount = dto.getFinal_price();
				orderService.payMentCancle(token, imp_uid, amount, "매장사정상결제취소");
			}
			dto.setOrder_status(order_status);
			service.updateOrder(dto);
		}
		else {
			dto.setOrder_status(order_status);
			service.updateOrder(dto);
		}
	}
	
	@ResponseBody
	@RequestMapping( value = "/sadmin/neworder.do" , method =RequestMethod.GET)
	public List<OrderListDto> sadminNewOrder(Authentication authentication,@RequestParam int order_seq){
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto sessionDto = (MemberDto) user.getMemberDto();
		int store_code = sessionDto.getStore_code();
		List<OrderListDto> list = service.getNewOrderList(store_code, order_seq);
		System.out.println("--");
		return list;
	}
	
	@RequestMapping( value = "/sadmin/charts" , method = RequestMethod.GET)
	public String sadminChart(Model model) {
		return "admin/sadmin/chart/charts";
	}
	
	@ResponseBody
	@RequestMapping( value = "/sadmin/menuchart.do" , method = RequestMethod.GET)
	public Map<String, Object> sadminMenuChartDo(Authentication authentication,@RequestParam int menu_code, @RequestParam String monthorday, @RequestParam String gender){
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto sessionDto = (MemberDto) user.getMemberDto();
		int store_code = sessionDto.getStore_code();
		Map<String, Object> map = new HashMap<String, Object>();
		if(monthorday.equals("day")) {
			Calendar calen = Calendar.getInstance();
			Date today = new Date();
			calen.setTime(today);
			DateFormat df = new SimpleDateFormat("MM/dd");
			String[] labels= new String[7];
			labels[6] = df.format(calen.getTime());
			for(int i=5; i>=0; i--) {
				calen.add(Calendar.DATE, -1);
				labels[i] = df.format(calen.getTime());
			}
			map.put("labels", labels);
		}else {
			String[] labels = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
			map.put("labels", labels);
		}
		if(gender.equals("gender")) {
			map.put("list1",service.getSalesVolumeBySeqAndGender(menu_code, monthorday, "1",store_code));
			map.put("list2",service.getSalesVolumeBySeqAndGender(menu_code, monthorday, "2",store_code));
		}else {
			map.put("list",service.getSalesVolumeBySeq(menu_code, monthorday,store_code));
		}
		map.put("label", sService.getMenuBySeq(menu_code).getName());
		return map;
	}
	
	@GetMapping("/sadmin/chart/getData")
	public @ResponseBody ResponseEntity<Map<String, Object>>getChartData(Authentication authentication, ChartSearchDto chartDto){
		SecurityUser user = (SecurityUser) authentication.getPrincipal();
		MemberDto sessionDto = (MemberDto) user.getMemberDto();
		int store_code = sessionDto.getStore_code();
		
		chartDto.setSearch(String.valueOf(store_code));
		Map<String, Object> chartDataMap = new HashMap<String, Object>();
		
		if(chartDto.getSex().equals("true")) {
			chartDto.setSex("1");
			List<Integer>mDataList = service.getGenderSales(chartDto);
			chartDto.setSex("2");
			List<Integer>wDataList = service.getGenderSales(chartDto);
			chartDataMap.put("mDataList", mDataList);
			chartDataMap.put("wDataList", wDataList);
			System.out.println(mDataList.toString());
			System.out.println(wDataList.toString());
		}else {
			List<Integer>dataList = service.getChartDataAll(chartDto);
			chartDataMap.put("dataList", dataList);
		}

		String dateStandard = chartDto.getDateStandard();
		if(dateStandard.equals("month")) {
			String[]labels= {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
			chartDataMap.put("labels", labels);
		}else {
			Calendar calen = Calendar.getInstance();
			Date today = new Date();
			calen.setTime(today);
			DateFormat df = new SimpleDateFormat("MM/dd");
			String[]labels= new String[7];
			labels[6] = df.format(calen.getTime());
			for(int i=5; i>=0; i--) {
				calen.add(Calendar.DATE, -1);
				labels[i] = df.format(calen.getTime());
			}
			chartDataMap.put("labels", labels);
		}

		
		return new ResponseEntity<Map<String,Object>>(chartDataMap, HttpStatus.OK);
	}
	
	@GetMapping("/sadmin/getExcel")
	public void getExcel(Authentication authentication, HttpServletResponse res){
		
		SecurityUser user = (SecurityUser)authentication.getPrincipal();
		MemberDto sadmin = user.getMemberDto();
		service.getExcel(sadmin.getStore_code(), res);

	}
	
	
}
