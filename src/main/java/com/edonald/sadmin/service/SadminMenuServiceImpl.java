package com.edonald.sadmin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dto.MenuDto;
import com.edonald.sadmin.dao.SadminMenuMapper;

@Service
public class SadminMenuServiceImpl implements SadminMenuService {
	
	@Autowired
	SadminMenuMapper mapper;
	
	@Override
	public List<MenuDto> listAll(String type) {
		return mapper.listAll(type);
	}
	
	@Override
	public void insertBlock(Map<String, String> map) {
		mapper.insertBlock(map);
	}
	
	@Override
	public void deleteBlock(Map<String, String> map) {
		mapper.deleteBlock(map);
	}

}
