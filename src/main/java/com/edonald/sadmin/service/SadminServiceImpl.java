package com.edonald.sadmin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dto.StoreDto;
import com.edonald.sadmin.dao.SadminMapper;

@Service
public class SadminServiceImpl implements SadminService {
	
	@Autowired
	SadminMapper mapper;
	
	@Override
	public StoreDto getStore(int store_code) {
		return mapper.getStore(store_code);
	}

}
