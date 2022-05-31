package com.edonald.hadmin.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.hadmin.dto.ChartSearchDto;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.PromotionDto;
import com.edonald.hadmin.serivce.AdminMenuService;
import com.edonald.hadmin.serivce.FileUploadService;
import com.edonald.hadmin.serivce.HadminService;
import com.edonald.hadmin.serivce.StoreManageService;
import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;
import com.edonald.member.service.MemberService;
import com.edonald.order.dto.CartDto;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class HadminController {
	@Autowired
	private AdminMenuService bService;
	@Autowired
	private FileUploadService fService; 
	@Autowired
	private StoreManageService sService;
	@Autowired
	private MemberService mService;
	@Autowired
	private HadminService hService;

	@RequestMapping(value = "/hadmin/index", method = RequestMethod.GET)
	public String hadminIndex() {
		return "admin/hadmin/index2";
	}
	
// 프로모션 관리
	@RequestMapping(value = "/hadmin/promotion", method =RequestMethod.GET)
	public String hadminPromotionPage(Model model) {
		model.addAttribute("list", hService.getPromotionList());
		return "admin/hadmin/board/promotion";
	}
	
	@GetMapping(value ="/hadmin/promotionInsert")
	public String hadminPromotionInsert() {
		return "admin/hadmin/board/promotionRegister";
	}
	
	@GetMapping(value = "/hadmin/promotionUpdate")
	public String hadminPromotionUpdate(Model model, @RequestParam("p_seq") int p_seq) {
		PromotionDto dto = hService.getPromotion(p_seq);
		String img = "https://edonaldfile.s3.ap-northeast-2.amazonaws.com/" + dto.getP_img();
		dto.setP_img(img);
		model.addAttribute("promotion", dto);
		return "admin/hadmin/board/promotionRegister";
	}
	
	@ResponseBody
	@RequestMapping(value = "/hadmin/promotionInsert.do", method = RequestMethod.POST)
	public void hadminPromotionIsnertDo(PromotionDto dto,@RequestParam("mainUploadFile") MultipartFile mainUploadFile) {
		System.out.println(dto.toString());
		String path = "common/delivery";
		if(!mainUploadFile.getOriginalFilename().equals("")) {
			dto.setP_img(fService.fileUpload(mainUploadFile, path));
		}
		hService.insertPromotion(dto);
	}
	
	@ResponseBody
	@RequestMapping(value = "/hadmin/promotionUpdate.do", method = RequestMethod.POST)
	public void hadminPromotionUpdateDo(PromotionDto dto,@RequestParam("mainUploadFile") MultipartFile mainUploadFile) {
		String path = "common/delivery";
		System.out.println(path);
		if(!mainUploadFile.getOriginalFilename().equals("")) {
			System.out.println("--fservice");
			dto.setP_img(fService.fileUpload(mainUploadFile, path));
		}
		System.out.println(dto.getP_status());
		hService.updatePromotion(dto);
	}
	
// 회원관리
	//page
	@RequestMapping(value = "/hadmin/userPage",method = RequestMethod.GET)
	public String hadminUserPage(Model model,String user_status) {
		if(user_status != null) {
			if(user_status.equals("0")) {
				model.addAttribute("list",mService.getMemberList(0) );
			}else {
				model.addAttribute("list",mService.getMemberList(1) );
			}
		}else {
			model.addAttribute("list",mService.getMemberList(1) );
		}
		
		return "admin/hadmin/usercheck/usercheck";
	}
	//insertPage
	@RequestMapping(value = "/hadmin/CMSadmin", method = RequestMethod.GET)
	public String hadminCreateModifySadmin(Model model,String user_email) {
		if(user_email != null) {
			model.addAttribute("user",mService.getMemberById(user_email));
		}
		return "admin/hadmin/usercheck/admincreate";
	}
	//insertMemberSadmin.do
	@ResponseBody
	@RequestMapping( value = "/hadmin/createSadmin.do",method = RequestMethod.POST)
	public String hadminCreate(MemberDto dto, HttpServletRequest req) {
		log.info("create_sadmin url: " + req.getRequestURL() + " ip: " + req.getRemoteAddr()  );
		String msg = sService.joinSadmin(dto);
		String result = "{ \"msg\":\"" +msg+"\"}";
		return result;
	}
	// 계정 비활성화 활성화
	@ResponseBody
	@RequestMapping( value = "/hadmin/unactivity.do", method = RequestMethod.POST)
	public void hadminUnactivityMember(MemberDto dto) {
		mService.activityMemberControl(dto);
	}
	
	@ResponseBody
	@RequestMapping( value ="/hadmin/modifyMember.do",method = RequestMethod.POST)
	public void hadminModifyMember(MemberDto dto, HttpServletRequest req) {
		log.info("modfyMember " + " url: " + req.getRequestURL() + " ip: " + req.getRemoteAddr() );
		mService.changeAccountByAdmin(dto);
	}

// 메뉴 관리 
	@RequestMapping(value = "/hadmin/menu", method = RequestMethod.GET)
	public String hadminBurgerMenu(Model model,String type) {
		model.addAttribute("list",bService.listAll(type));
		model.addAttribute("type",type);
		return "admin/hadmin/menu/burgerNset2";
	}
	
	@RequestMapping(value = "/hadmin/updateStatus.do", method = RequestMethod.POST)
	public String updateStatus(String seq, int status) {
		bService.updateStatus(seq,status);
		return "admin/hadmin/menu/burgerNset2";
	}
	
	@RequestMapping(value = "/hadmin/register/menu", method = RequestMethod.GET)
	public String hadminRegisterBurger(Model model, String seq) {
		if(seq != null) {
			model.addAttribute("dto",bService.getMenu(seq));
			model.addAttribute("pageSetting","수정");
		}
		return "admin/hadmin/menu/burgerRegister";
	}
	
	@ResponseBody
	@RequestMapping(value = "/hadmin/insert", method = RequestMethod.POST)
	public String insertMenu(MenuDto dto,@RequestParam("mainUploadFile") MultipartFile mainUploadFile,@RequestParam("subUploadFile") MultipartFile subUploadFile) {
		String path = "menu/burger";
		dto.setStatus(1);
		dto.setImg_path(fService.fileUpload(mainUploadFile, path));
		if(subUploadFile.getOriginalFilename().equals("")) {
			dto.setSet_img_path("");
		}else {
			dto.setSet_img_path(fService.fileUpload(subUploadFile, path));
		}
		bService.insert(dto);
		return "등록완료";
	}
	
	@ResponseBody
	@RequestMapping(value = "/hadmin/update", method = RequestMethod.POST)
	public String updateMenu(MenuDto dto,@RequestParam("mainUploadFile") MultipartFile mainUploadFile,@RequestParam("subUploadFile") MultipartFile subUploadFile) {
		String path = "menu/burger";
		dto.setStatus(1);
		if(mainUploadFile.getOriginalFilename().equals("")) {
		}else {
			dto.setImg_path(fService.fileUpload(mainUploadFile, path));
		}
		if(subUploadFile.getOriginalFilename().equals("")) {
		}else {
			dto.setSet_img_path(fService.fileUpload(subUploadFile, path));
		}
		bService.update(dto);
		return "수정완료";
	}
	
	@ResponseBody
	@RequestMapping(value = "/hadmin/updateSubstitue.do", method = RequestMethod.POST)
	public void updateSubstitue(MenuDto dto) {
		bService.updateSubstitue(dto);
	}
	
	@GetMapping("/hadmin/chart")
	public String chartpage() {
		return "/admin/hadmin/chart/charts";
	}
	
	@GetMapping("/hadmin/chart/getData")
	public @ResponseBody ResponseEntity<Map<String, Object>>getChartData(ChartSearchDto chartDto){
		System.out.println(chartDto.toString());
		Map<String, Object> chartDataMap = new HashMap<String, Object>();
		if(chartDto.getSex().equals("true")) {
			chartDto.setSex("1");
			List<Integer>mDataList = hService.getGenderSales(chartDto);
			chartDto.setSex("2");
			List<Integer>wDataList = hService.getGenderSales(chartDto);
			chartDataMap.put("mDataList", mDataList);
			chartDataMap.put("wDataList", wDataList);
			System.out.println(mDataList.toString());
			System.out.println(wDataList.toString());
		}else {
			List<Integer>dataList = hService.getChartDataAll(chartDto);
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
			for(int i=6; i>=0; i--) {
				calen.add(Calendar.DATE, -1);
				labels[i] = df.format(calen.getTime());
			}
			chartDataMap.put("labels", labels);
		}
		if(chartDto.getSearch() != null) {
			String storeName =hService.getStoreName(chartDto.getSearch());
			chartDataMap.put("storeName", storeName);
		}

		
		return new ResponseEntity<Map<String,Object>>(chartDataMap, HttpStatus.OK);
	}
	
	
	@ResponseBody
	@RequestMapping( value = "/hadmin/menuchart.do" , method = RequestMethod.GET)
	public Map<String, Object> sadminMenuChartDo(@RequestParam int menu_code, @RequestParam String monthorday, @RequestParam String gender){
		Map<String, Object> map = new HashMap<String, Object>();
		if(monthorday.equals("day")) {
			Calendar calen = Calendar.getInstance();
			Date today = new Date();
			calen.setTime(today);
			DateFormat df = new SimpleDateFormat("MM/dd");
			String[] labels= new String[7];
			for(int i=0; i<7; i++) {
				calen.add(Calendar.DATE, -1);
				labels[i] = df.format(calen.getTime());
			}
			map.put("labels", labels);
		}else {
			String[] labels = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
			map.put("labels", labels);
		}
		if(gender.equals("gender")) {
			map.put("list1",hService.getSalesVolumeBySeqAndGender(menu_code, monthorday, "1"));
			map.put("list2",hService.getSalesVolumeBySeqAndGender(menu_code, monthorday, "2"));
		}else {
			map.put("list",hService.getSalesVolumeBySeq(menu_code, monthorday));
		}
		map.put("label", hService.getMenuBySeq(menu_code).getName());
		return map;
	}
	
	@ResponseBody
	@RequestMapping( value = "/hadmin/eachmenuchart.do" , method = RequestMethod.GET)
	public Map<String, Object> sadminEachMenuChartDo(@RequestParam String menu_type, @RequestParam String order_date, @RequestParam boolean user_gender){
		Map<String, Object> map = new HashMap<String, Object>();
		List<CartDto> basicList = new ArrayList<CartDto>();
		List<String> labelsList = new ArrayList<String>();
		List<Integer> dataList = new ArrayList<Integer>();
		List<Integer> dataList2 = new ArrayList<Integer>();
		if(!user_gender) {
			basicList =  hService.getEachMenuSalesVolume(0,menu_type,order_date);
			for(CartDto li : basicList) {
				labelsList.add(li.getCart_product_name());
				dataList.add(li.getCart_product_quant());
			}
			map.put("labels", labelsList);
			map.put("list", dataList);
			System.out.println(map.get("list").toString());
		}else {
			basicList =  hService.getEachMenuSalesVolume(1,menu_type,order_date);	
			for(CartDto li : basicList) {
				labelsList.add(li.getCart_product_name());
				dataList.add(li.getCart_product_quant());
			}
			map.put("labels", labelsList);
			map.put("list1", dataList);
			basicList =  hService.getEachMenuSalesVolume(2,menu_type,order_date);
			for(CartDto li : basicList) {
				dataList2.add(li.getCart_product_quant());
			}
			map.put("list2", dataList2);
			System.out.println(map.get("list1").toString());
			System.out.println(map.get("list2").toString());
		}
		return map;
	}
	
	@GetMapping("/hadmin/getExcel")
	public void getExcel(Authentication authentication, HttpServletResponse res){
		hService.getExcel(res);

	}
	
}
