package com.edonald.faq.dto;

import lombok.Data;

@Data
public class FaqDto {
	private int rnum;				// rownum
	private int faq_seq;			// 시퀀스
	private String faq_title;		// 제목
	private String faq_content;		// 내용
	private String faq_subject;		// 분류
}
