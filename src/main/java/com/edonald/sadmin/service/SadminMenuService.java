package com.edonald.sadmin.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.edonald.hadmin.dto.MenuDto;

public interface SadminMenuService {
	public List<MenuDto> listAll(String type);
	public List<Integer> listBlock(String store_code);
	public void insertBlock(Map<String, String> map);
	public void deleteBlock(Map<String, String> map);
}
