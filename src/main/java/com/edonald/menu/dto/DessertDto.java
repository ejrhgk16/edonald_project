package com.edonald.menu.dto;

import lombok.Data;

@Data
public class DessertDto {
	private int dessert_code;			// 시퀀스
	private String dessert_name;			// 이름
	private int dessert_kcal;			// 칼로리 
	private String dessert_img_path;		// 딜리버리 이미지
	private int dessert_status;			// 제품상태	
	private String dessert_n_img_path;	// 영양 정보 이미지
	private int category_code;			// 커피? 음료? 
	private String dessert_e_name; 		// 영어이름
	private String dessert_detail_img_path;//상세 이미지
	private int dessert_price;			// 가격
	private String dessert_btn_img_path;	// 메뉴사이트 이미지
	private String dessert_detail_comment;// 상세설명
	private String dessert_allergy;		// 알러지 정보
}
