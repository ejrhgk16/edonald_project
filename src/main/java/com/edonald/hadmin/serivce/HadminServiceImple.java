package com.edonald.hadmin.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dao.HadminMapper;
import com.edonald.hadmin.dto.ChartSearchDto;
import com.edonald.hadmin.dto.PromotionDto;

@Service
public class HadminServiceImple implements HadminService {

	@Autowired
	HadminMapper mapper;
	
	@Override
	public void insertPromotion(PromotionDto dto) {
		mapper.insertPromotion(dto);
	}
	
	@Override
	public List<PromotionDto> getPromotionList(){
		return mapper.getPromotionList();
	}
	
	@Override
	public PromotionDto getPromotion(int p_seq) {
		return mapper.getPromotion(p_seq);
	}
	
	@Override
	public void updatePromotion(PromotionDto dto) {
		mapper.updatePromotion(dto);
	}

	@Override
	public List<Integer> getChartDataAll(ChartSearchDto dto) {
		return  mapper.getChartDataAll(dto);
	}

	@Override
	public String getStoreName(String search) {		
		return mapper.getStoreName(search);
	}

	@Override
	public List<Integer> getGenderSales(ChartSearchDto dto) {
		return mapper.getGenderSalesData(dto);
	}
}
