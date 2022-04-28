package com.edonald.menu.service;

import java.util.List;

import com.edonald.menu.dto.BurgerDto;

public interface BurgerService {
	public List<BurgerDto> listAll(int start, int end);
	public void insert(BurgerDto dto);
	public BurgerDto read(int bno);
	public void modify(BurgerDto dto);
	public void delete(int bno);
	public int totalRecord();
}
