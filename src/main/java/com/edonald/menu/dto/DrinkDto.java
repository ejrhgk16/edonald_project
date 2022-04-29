package com.edonald.menu.dto;

import lombok.Data;

@Data
public class DrinkDto {
	private int drink_code;			// 시퀀스
	private String drink_name;			// 이름
	private int drink_kcal;			// 칼로리 
	private String drink_img_path;		// 딜리버리 이미지
	private int drink_status;			// 제품상태	
	private String drink_n_img_path;	// 영양 정보 이미지
	private int category_code;			// 치즈버거? 불고기버거? 
	private String drink_e_name; 		// 영어이름
	private String drink_detail_img_path;//상세 이미지
	private int drink_price;			// 가격
	private String drink_btn_img_path;	// 메뉴사이트 이미지
	private String drink_detail_comment;// 상세설명
	private String drink_allergy;		// 알러지 정보
}
