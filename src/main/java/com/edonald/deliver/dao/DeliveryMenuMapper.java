package com.edonald.deliver.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.MenuDto;

@Repository
public interface DeliveryMenuMapper {
	public List<MenuDto> bList(String type);
	public List<String> getBlockMenuList(int store_code);// '준비중' 처리를 위한
}
