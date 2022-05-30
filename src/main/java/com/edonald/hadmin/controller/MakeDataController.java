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
	@RequestMapping(value = "/asdasdasdasd/makeDate.do", method = RequestMethod.GET)
	public void makeDateDo() {
		for(int j = 0 ; j<1000;j++) {
		List<Integer> seqList = mdService.getMenuSeqList();
		System.out.println(seqList.size());
		int[] maxDays = {31, 28, 31, 30, 31};
		int iMinMonth = 1;
		int iMaxMonth = 5;
		int iRandomMonth = (int) (Math.random() * (iMaxMonth - iMinMonth+1)) + iMinMonth -1;
		int iRandomDay = (int) (Math.random() * (maxDays[iRandomMonth] -1) +1 );
		Calendar cal = Calendar.getInstance();
		
		int[] storeCodeArray = {1,12,31,32,33,34,35,36,37,38,39,40,41};
		int store_code =  storeCodeArray[(int) (Math.random() * 12)];
		cal.set(Calendar.YEAR, 2022);
		cal.set(Calendar.MONTH, iRandomMonth);
		cal.set(Calendar.DAY_OF_MONTH, iRandomDay);
		cal.set(Calendar.HOUR_OF_DAY, 12);
		Timestamp ts = new Timestamp(cal.getTime().getTime());
		
		OrderListDto dto = new OrderListDto();
		dto.setUser_phone("01024954502");
		dto.setUser_type(1);
		dto.setOrder_date(ts);
		dto.setDelivery_time(ts);
		dto.setUser_name("더미");
		dto.setUser_phone("11111111111");
		dto.setUser_address("서울시 중구 다산로 163 - 702호");
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
