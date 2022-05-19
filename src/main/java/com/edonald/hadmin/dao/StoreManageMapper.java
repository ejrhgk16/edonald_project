package com.edonald.hadmin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edonald.hadmin.dto.StoreDto;
import com.edonald.hadmin.dto.StorePageCriteria;
import com.edonald.member.dto.MemberDto;

@Repository
public interface StoreManageMapper {
	public void insertStore(StoreDto storeDto);
	public List<StoreDto> getStoreList();
	public int getTotalNum();
	public void joinSadmin(MemberDto dto);
	public String checkDupl(String user_email);
	public StoreDto getStore(String store_code);
	public void updateStore(StoreDto dto);
}
