package com.edonald.hadmin.serivce;

import java.lang.reflect.Member;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dao.StoreManageMapper;
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.hadmin.dto.StorePageCriteria;
import com.edonald.member.dto.MemberDto;

@Service
public class StoreManageServiceImpl implements StoreManageService {
	@Autowired
	private StoreManageMapper storeMangeMapper;
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	
	@Override
	public void registerStore(StoreDto dto) {
		dto.setStore_status(1);
		storeMangeMapper.insertStore(dto);
	}

	@Override
	public List<StoreDto> getStoreList() {
		return storeMangeMapper.getStoreList();
	}

	@Override
	public int getTotalNum() {
		return storeMangeMapper.getTotalNum();
	}
		
	@Override
	public String joinSadmin(MemberDto dto) {
		String user_email = dto.getUser_email();
		if(storeMangeMapper.checkDupl(user_email) != null) {
			return "중복된 이메일";
		}
		String password = dto.getUser_password();
		String encodePassword = encoder.encode(password);
		dto.setUser_password(encodePassword);
		storeMangeMapper.joinSadmin(dto);
		return "등록 성공";
	}
	
	@Override
	public StoreDto getStore(String store_code) {
		return storeMangeMapper.getStore(store_code);
	}
	
	@Override
	public void updateStore(StoreDto dto) {
		storeMangeMapper.updateStore(dto);
	}
}
