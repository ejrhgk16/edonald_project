package com.edonald.sadmin.service;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.edonald.hadmin.dto.StoreDto;

public interface SadminService {
	public StoreDto getStore(int store_code);
	public void updateStoreStatus(Map<String, String> map);
}
