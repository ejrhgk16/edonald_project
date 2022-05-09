package com.edonald.hadmin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.StoreDto;
import com.edonald.hadmin.dto.StorePageCriteria;

@Repository
public interface StoreManageMapper {
	public void insertStore(StoreDto storeDto);
	public List<StoreDto> getStoreList(StorePageCriteria cri);
	public int getTotalNum();
}
