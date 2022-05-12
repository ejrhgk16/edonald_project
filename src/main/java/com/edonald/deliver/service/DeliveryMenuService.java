package com.edonald.deliver.service;

import java.util.List;
import java.util.Map;

import com.edonald.hadmin.dto.MenuDto;

public interface DeliveryMenuService {
	public List<MenuDto> bList(Map<String, String> map);
}
