package com.edonald.deliver.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edonald.menu.dto.BurgerDto;

@Repository
public interface DeliveryMenuMapper {
	public List<BurgerDto> bList();
}
