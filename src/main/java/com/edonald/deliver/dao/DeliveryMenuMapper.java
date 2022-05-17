package com.edonald.deliver.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.MenuDto;

@Repository
public interface DeliveryMenuMapper {
	public List<MenuDto> mList(Map<String, String> map);
	public List<Integer> getBlockMenuList(int store_code);// '준비중' 처리를 위한
}
