package com.edonald.hadmin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.MenuDto;


@Repository
public interface AdminMenuMapper {
	
	public List<MenuDto> listAll(String type);
	public MenuDto getMenu(String seq);
	public void insert(MenuDto dto);
	public void updateStatus(@Param("seq")String seq,@Param("status") int status);
	public void update(MenuDto dto);
	public void updateSubstitue(MenuDto dto);
	
	// 나중에할꺼
	public MenuDto read(int bno);
	public void modify(MenuDto dto);
	public void delete(int bno);

}
