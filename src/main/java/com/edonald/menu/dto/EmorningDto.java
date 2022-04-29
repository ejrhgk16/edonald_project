package com.edonald.menu.dto;

import lombok.Data;

@Data
public class EmorningDto {
	private int emorning_code;			// 시퀀스
	private String emorning_name;			// 이름
	private int emorning_kcal;			// 칼로리 
	private String emorning_img_path;		// 딜리버리 이미지
	private int emorning_status;			// 제품상태	
	private String emorning_n_img_path;	// 영양 정보 이미지
	private int category_code;			// 치즈버거? 불고기버거? 
	private String emorning_e_name; 		// 영어이름
	private String emorning_detail_img_path;//상세 이미지
	private int emorning_price;			// 가격
	private String emorning_btn_img_path;	// 메뉴사이트 이미지
	private String emorning_detail_comment;// 상세설명
	private String emorning_allergy;		// 알러지 정보
}
