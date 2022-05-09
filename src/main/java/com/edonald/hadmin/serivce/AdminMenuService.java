package com.edonald.hadmin.serivce;

import java.util.List;

import com.edonald.hadmin.dto.MenuDto;

public interface AdminMenuService {
	public List<MenuDto> listAll();
	public MenuDto getMenu(String seq);
	public void insert(MenuDto dto);
	public void updateStatus(String code,int status);	
	public void update(MenuDto dto);
	//나중에 할꺼
	public MenuDto read(int bno);
	public void modify(MenuDto dto);
	public void delete(int bno);

}
