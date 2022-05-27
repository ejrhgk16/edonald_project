package com.edonald.hadmin.serivce;

import java.util.List;

import com.edonald.hadmin.dto.ChartSearchDto;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.PromotionDto;
import com.edonald.order.dto.CartDto;

public interface HadminService {
	public void insertPromotion(PromotionDto dto);
	public List<PromotionDto> getPromotionList();
	public PromotionDto getPromotion(int p_seq);
	public void updatePromotion(PromotionDto dto);
	public List<Integer>getChartDataAll(ChartSearchDto dto);
	public String getStoreName(String search);
	public List<Integer> getGenderSales(ChartSearchDto dto);
	public List<Integer> getSalesVolumeBySeq(int menu_code, String monthorday);
	public MenuDto getMenuBySeq(int menu_code);
	public List<Integer> getSalesVolumeBySeqAndGender(int menu_code,String monthorday,String user_gender);
	public List<CartDto> getEachMenuSalesVolume(int user_gender, String menu_type, String order_date);
}
