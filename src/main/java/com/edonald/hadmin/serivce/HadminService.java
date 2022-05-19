package com.edonald.hadmin.serivce;

import java.util.List;

import com.edonald.hadmin.dto.PromotionDto;

public interface HadminService {
	public void insertPromotion(PromotionDto dto);
	public List<PromotionDto> getPromotionList();
	public PromotionDto getPromotion(int p_seq);
	public void updatePromotion(PromotionDto dto);
}
