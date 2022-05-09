package com.edonald.hadmin.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dao.StoreManageMapper;
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.hadmin.dto.StorePageCriteria;

@Service
public class StoreManageServiceImpl implements StoreManageService {
	@Autowired
	private StoreManageMapper storeMangeMapper;
	
	@Override
	public void registerStore(StoreDto dto) {
		dto.setStore_status(1);
		storeMangeMapper.insertStore(dto);
	}

	@Override
	public List<StoreDto> getStoreList(StorePageCriteria cri) {
		return storeMangeMapper.getStoreList(cri);
	}

	@Override
	public int getTotalNum() {
		return storeMangeMapper.getTotalNum();
	}
		
	

}
