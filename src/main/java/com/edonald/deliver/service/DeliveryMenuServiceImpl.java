package com.edonald.deliver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.deliver.dao.DeliveryMenuMapper;
import com.edonald.menu.dto.BurgerDto;

@Service
public class DeliveryMenuServiceImpl implements DeliveryMenuService {

	@Autowired
	private DeliveryMenuMapper mapper;
	
	@Override
	public List<BurgerDto> bList() {
		return mapper.bList();
	}

}
