package com.edonald.sadmin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.StoreDto;

@Repository
public interface SadminMapper {
	public List<MenuDto> listAll(@Param("type")String type);
	public List<Integer> listBlock(@Param("store_code") String store_code);
	public void insertBlock(Map<String, String> map);
	public void deleteBlock(Map<String, String> map);
	public StoreDto getStore(@Param("store_code") int store_code);
}
