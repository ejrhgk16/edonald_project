package com.edonald.faq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.faq.dao.FaqMapper;
import com.edonald.faq.dto.FaqDto;
import com.edonald.faq.dto.PageDto;

@Service
public class FaqServiceImpl implements FaqService {
	
	@Autowired
	private FaqMapper mapper;
	
	@Override
	public List<FaqDto> listAll(PageDto data){
		return mapper.listAll(data);
	}
	
	@Override
	public int listSize(PageDto data) {
		return mapper.listSize(data);
	}

}
