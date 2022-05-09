package com.edonald.hadmin.menu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.menu.dto.BurgerDto;

@Repository
public interface BurgerMapper {
	
	public List<BurgerDto> listAll();
	public List<BurgerDto> list();
	public BurgerDto getMenu(String b_seq);
	public void insert(BurgerDto dto);
	public void updateStatus(@Param("burger_code")String burger_code,@Param("burger_status") int burger_status);
	public void update(BurgerDto dto);
	
	
	// 나중에할꺼
	public BurgerDto read(int bno);
	public void modify(BurgerDto dto);
	public void delete(int bno);

}
