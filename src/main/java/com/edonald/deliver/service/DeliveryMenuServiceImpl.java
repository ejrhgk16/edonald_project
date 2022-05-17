package com.edonald.deliver.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.deliver.dao.DeliveryMenuMapper;
import com.edonald.hadmin.dto.MenuDto;

@Service
public class DeliveryMenuServiceImpl implements DeliveryMenuService {

	@Autowired
	private DeliveryMenuMapper mapper;
	
	@Override
	public List<MenuDto> mList(Map<String, String> map) {
		return mapper.mList(map);
	}
	@Override
	public List<Integer> getBlockMenuList(int store_code){
		return mapper.getBlockMenuList(store_code);
	}

}
