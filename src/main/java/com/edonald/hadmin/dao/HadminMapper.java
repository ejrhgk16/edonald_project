package com.edonald.hadmin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.ChartSearchDto;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.PromotionDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;

@Repository
public interface HadminMapper {
	public void insertPromotion(PromotionDto dto);
	public List<PromotionDto> getPromotionList();
	public PromotionDto getPromotion(int p_seq);
	public void updatePromotion(PromotionDto dto);
	public List<Integer> getChartDataAll(ChartSearchDto dto);
	public String getStoreName(String search);
	public List<Integer> getGenderSalesData(ChartSearchDto dto);
	public List<Integer> getSalesVolumeBySeq(@Param("menu_code") int menu_code,@Param("monthorday") String monthorday);
	public MenuDto getMenuBySeq(int menu_code);
	public List<Integer> getSalesVolumeBySeqAndGender(@Param("menu_code") int menu_code,@Param("monthorday") String monthorday,@Param("user_gender") String user_gender);
	public List<CartDto> getEachMenuSalesVolume(@Param("user_gender") int user_gender,@Param("menu_type") String menu_type,@Param("order_date") String order_date);
	public List<OrderListDto>getExcelData();

}
