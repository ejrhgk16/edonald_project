package com.edonald.sadmin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.MenuDto;

@Repository
public interface SadminMenuMapper {
	public List<MenuDto> listAll(@Param("type")String type);
	public void insertBlock(Map<String, String> map);
	public void deleteBlock(Map<String, String> map);
}
