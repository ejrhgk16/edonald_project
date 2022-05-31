package com.edonald.hadmin.controller;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.serivce.MakeDateService;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.order.dto.OrderNumDto;
import com.edonald.order.service.OrderService;

@Controller
public class MakeDataController {

	
	@Autowired
	MakeDateService mdService;
	
	@ResponseBody
	@RequestMapping(value = "/dontdo/makeDate.do", method = RequestMethod.GET)
	public void makeDateDo() {
		for(int j = 0 ; j<50; j++) {
			List<Integer> seqList = mdService.getMenuSeqList();
			System.out.println(seqList.size());
			int[] maxDays = {31, 28, 31, 30, 31};
			int iMinMonth = 1;
			int iMaxMonth = 5;
			int iRandomMonth = (int) (Math.random() * (iMaxMonth - iMinMonth+1)) + iMinMonth -1;
			int iRandomDay = (int) (Math.random() * (maxDays[iRandomMonth] -1) +1 );
			int[] dayArray = {1,2,3};
			int iRandomDay2 =  dayArray[(int) (Math.random() * (dayArray.length))];
			Calendar cal = Calendar.getInstance();
			
			int[] storeCodeArray = {1,12,31,32,33,34,35,36,37,38,39,40,41};
			int store_code =  storeCodeArray[(int) (Math.random() * 12)];
			cal.set(Calendar.YEAR, 2022);
			cal.set(Calendar.MONTH, 5);
			cal.set(Calendar.DAY_OF_MONTH, iRandomDay2);
			cal.set(Calendar.HOUR_OF_DAY, 12);
			Timestamp ts = new Timestamp(cal.getTime().getTime());
			
			OrderListDto dto = new OrderListDto();
			dto.setUser_phone("01024954502");
			dto.setUser_type(1);
			dto.setOrder_date(ts);
			dto.setDelivery_time(ts);
			
			int random = (int)(Math.random() * 20);
			String[] nameArray = {"제갈대선", "조소희", "추영준", "조현빈", "안진미", "설영진", "정선호", "양정은", "설재은", "탁준우", "문우철", "황서윤", "정민경", "설석희", "풍태용", "풍선웅", "문창호", "전은옥", "권규현", "봉창욱"};
			String[] phoneArray = {"010-5285-3994","010-7467-2111","010-6339-7148","010-4912-4701","010-5443-5830","010-1932-1332","010-2438-8474","010-4630-7751","010-9374-5864","010-9705-7507","010-9199-9770","010-5748-8896","010-4314-4595","010-1669-6751","010-7558-8648","010-9227-6911","010-1573-5417","010-1335-5393","010-4930-8289","010-1544-4096"};
			String[] addressArray = {"서울특별시 마포구 성암로 189(상암동)","서울특별시 종로구 종로 19 (종로1가)","서울특별시 용산구 원효로89길 24 (원효로1가)","서울특별시 서초구 서초대로 202 (서초동)","서울특별시 강남구 강남대로 328 (역삼동)","서울특별시 성북구 성북로 5-19 (성북동1가, 성북CYON HILL)","서울특별시 노원구 노원로 283 (하계동)","서울특별시 마포구 대흥로 191-8 (대흥동)","서울특별시 마포구 숭문16가길 18 (염리동)","서울특별시 서초구 방배중앙로 70 (방배동)","서울특별시 중랑구 중랑천로 137 (중화동)","서울특별시 성북구 성북로 166-1 (성북동, 성북힐즈)","서울특별시 성북구 성북로31길 40-12 (성북동)","서울특별시 성북구 성북로 11 (성북동1가)","서울특별시 성북구 성북로 15-9 (성북동1가)","서울특별시 도봉구 도봉산4가길 6-10 (도봉동)","서울특별시 도봉구 도봉산길 11 (도봉동)","서울특별시 중랑구 신내로 115 (신내동)","	서울특별시 구로구 신도림로 11 (신도림동)","서울특별시 마포구 동교로38길 8 (연남동)"};
			String randomName = nameArray[random];
			dto.setUser_name(randomName);
			dto.setUser_phone(phoneArray[random]);
			dto.setUser_address(addressArray[random]);
			dto.setOrder_status(5);
			dto.setPayment_type("현장카드결제");
			dto.setStore_code(store_code);
			dto.setPostcode(12345);
			
			Random rnd = new Random();
			String num = "";
			Date date = new Date();
			java.sql.Date today = new java.sql.Date(ts.getTime());
			String orderDate = String.valueOf(today);
			orderDate = orderDate.replace("-", "");
			num += orderDate;
	
			while (true) {
				for (int i = 0; i < 5; i++) {
					if (rnd.nextBoolean()) {
						num += (char) ((int) (rnd.nextInt(26)) + 97);
					} else {
						num += (rnd.nextInt(10));
					}
				}
				if (mdService.checkOrderNum(num) == null) {
					break;
				}
			}
			
			dto.setMerchanuid(num);
			int index = (int)(Math.random() * (seqList.size()));
	
			CartDto cDto = new CartDto();
			cDto.setCart_product_code(seqList.get(index));
			MenuDto mdto = mdService.getMenuByCode(seqList.get(index));
	
			cDto.setCart_product_name( mdto.getName());
			cDto.setCart_product_img_path(mdto.getImg_path());
			cDto.setCart_product_price(mdto.getPrice());
			cDto.setCart_product_quant(iRandomMonth+1);
			cDto.setMerchanuid(num);
			if(mdto.getType().equals("burger")) {
				cDto.setComp_type("single");
			}else if(mdto.getType().equals("drink")) {
				cDto.setComp_type("medium");
			}else if(mdto.getType().equals("together_pack")) {
				cDto.setComp_type("package");
			}
				
			cDto.setMenu_type(mdto.getType());
			int calc_price = mdto.getPrice() * cDto.getCart_product_quant();
			cDto.setCalc_price(calc_price);
			dto.setTotal_price(calc_price);
			dto.setFinal_price(calc_price);
			mdService.insertOrderInfo(dto);
			mdService.insertCartInfo(cDto);
		}
	}	

}
