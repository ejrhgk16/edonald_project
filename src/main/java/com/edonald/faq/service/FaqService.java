package com.edonald.faq.service;

import java.util.List;

import com.edonald.faq.dto.FaqDto;
import com.edonald.faq.dto.PageDto;

public interface FaqService {
	public List<FaqDto> listAll(PageDto data);
	public int listSize(PageDto data);
	
}
