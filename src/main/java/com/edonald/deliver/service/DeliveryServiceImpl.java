package com.edonald.deliver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.deliver.dao.DeliveryMapper;
import com.edonald.hadmin.dto.PromotionDto;

@Service
public class DeliveryServiceImpl implements DeliveryService {
	
	@Autowired
	DeliveryMapper mapper;
	
	@Override
	public List<PromotionDto> getPromotionList() {
		// TODO Auto-generated method stub
		return mapper.getPromotionList();
	}

}
