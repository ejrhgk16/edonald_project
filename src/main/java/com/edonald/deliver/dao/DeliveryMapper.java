package com.edonald.deliver.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.PromotionDto;

@Repository
public interface DeliveryMapper {
	public List<PromotionDto> getPromotionList();
}
