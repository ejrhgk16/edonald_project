package com.edonald.faq.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.edonald.faq.dto.FaqDto;
import com.edonald.faq.dto.PageDto;

@Repository
public interface FaqMapper {
	
	public List<FaqDto> listAll(PageDto data);
	public int listSize(PageDto data);
	
}
