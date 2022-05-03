package com.edonald.faq.dto;

import java.util.List;

import lombok.Data;

@Data
public class PageDto {
	private int start;
	private int end;
	private String subject;
	private String search;
	private int page;
	private List<FaqDto> list;
}
