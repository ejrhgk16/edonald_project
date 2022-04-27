package com.edonald.menu.dto;

import lombok.Data;

@Data
public class HappymealDto {
	private int happymeal_code;			// 시퀀스
	private String happymeal_name;			// 이름
	private int happymeal_kcal;			// 칼로리 
	private String happymeal_img_path;		// 딜리버리 이미지
	private int happymeal_status;			// 제품상태	
	private String happymeal_n_img_path;	// 영양 정보 이미지
	private int category_code;			// 치즈버거? 불고기버거? 
	private String happymeal_e_name; 		// 영어이름
	private String happymeal_detail_img_path;//상세 이미지
	private int happymeal_price;			// 가격
	private String happymeal_btn_img_path;	// 메뉴사이트 이미지
	private String happymeal_detail_comment;// 상세설명
	private String happymeal_allergy;		// 알러지 정보
}
