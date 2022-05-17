package com.edonald.deliver.service;

import java.util.List;
import java.util.Map;

import com.edonald.hadmin.dto.MenuDto;

public interface DeliveryMenuService {
	public List<MenuDto> mList(Map<String, String> map);
	public List<Integer> getBlockMenuList(int store_code);
}
