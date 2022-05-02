package com.edonald.menu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.menu.dto.BurgerDto;

@Repository
public interface BurgerMapper {
	
	public List<BurgerDto> listAll();
	public void insert(BurgerDto dto);
	
	// 나중에할꺼
	public BurgerDto read(int bno);
	public void modify(BurgerDto dto);
	public void delete(int bno);

}
