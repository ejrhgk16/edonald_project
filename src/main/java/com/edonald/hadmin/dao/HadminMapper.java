package com.edonald.hadmin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.ChartSearchDto;
import com.edonald.hadmin.dto.PromotionDto;

@Repository
public interface HadminMapper {
	public void insertPromotion(PromotionDto dto);
	public List<PromotionDto> getPromotionList();
	public PromotionDto getPromotion(int p_seq);
	public void updatePromotion(PromotionDto dto);
	public List<Integer> getChartDataAll(ChartSearchDto dto);
	public String getStoreName(String search);
	public List<Integer> getGenderSalesData(ChartSearchDto dto);
}
