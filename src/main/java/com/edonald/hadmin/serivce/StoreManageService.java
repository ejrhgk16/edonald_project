package com.edonald.hadmin.serivce;

import java.util.List;

import com.edonald.hadmin.dto.StoreDto;
import com.edonald.hadmin.dto.StorePageCriteria;

public interface StoreManageService {
	public void registerStore(StoreDto dto);
	public List<StoreDto> getStoreList(StorePageCriteria cri);
	public int getTotalNum();
}
