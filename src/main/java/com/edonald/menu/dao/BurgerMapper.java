package com.edonald.menu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edonald.menu.dto.BurgerDto;

@Repository
public interface BurgerMapper {
	
	public List<BurgerDto> listAll(int start, int end);
	public void insert(BurgerDto dto);
	public BurgerDto read(int bno);
	public void modify(BurgerDto dto);
	public void delete(int bno);
	public int totalRecord();
}
