package com.edonald.hadmin.menu.serivce;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.edonald.menu.dto.BurgerDto;

public interface BurgerService {
	public List<BurgerDto> listAll();
	public BurgerDto getMenu(String b_seq);
	public void insert(BurgerDto dto);
	public void updateStatus(String burger_code,int burger_status);	
	public void update(BurgerDto dto);
	//나중에 할꺼
	public BurgerDto read(int bno);
	public void modify(BurgerDto dto);
	public void delete(int bno);

}
