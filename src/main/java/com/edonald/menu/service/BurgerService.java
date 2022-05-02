package com.edonald.menu.service;

import java.util.List;

import com.edonald.menu.dto.BurgerDto;

public interface BurgerService {
	public List<BurgerDto> listAll();
	public void insert(BurgerDto dto);
	
	//나중에 할꺼
	public BurgerDto read(int bno);
	public void modify(BurgerDto dto);
	public void delete(int bno);

}
