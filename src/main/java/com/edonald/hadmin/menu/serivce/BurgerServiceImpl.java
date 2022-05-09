package com.edonald.hadmin.menu.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.edonald.hadmin.menu.dao.BurgerMapper;
import com.edonald.menu.dto.BurgerDto;

@Service
public class BurgerServiceImpl implements BurgerService {
	
	@Autowired
	private BurgerMapper mapper;
	
	@Override
	public List<BurgerDto> listAll() {
		return mapper.listAll();
	}
	
	@Override
	public BurgerDto getMenu(String b_seq) {
		return mapper.getMenu(b_seq);
	}

	@Override
	public void insert(BurgerDto dto) {
		// TODO Auto-generated method stub
		mapper.insert(dto);
	}
	@Override
	public void updateStatus(String burger_code,int burger_status) {
		mapper.updateStatus(burger_code, burger_status);
	}
	
	@Override
	public void update(BurgerDto dto) {
		mapper.update(dto);
	}
	
	@Override
	public BurgerDto read(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modify(BurgerDto dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int bno) {
		// TODO Auto-generated method stub

	}
	
}
