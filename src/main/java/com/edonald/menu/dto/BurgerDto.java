package com.edonald.menu.dto;

import lombok.Data;

@Data
public class BurgerDto {
	private int burger_code;			// 코드명
	private String burger_name;			// 이름
	private int burger_kcal;			// 칼로리 
	private String burger_img_path;		// 딜리버리 이미지
	private int burger_status;			// 제품상태 
//	private String burger_n_img_path;	// 영양 정보 이미지 *
	private int category_code;			// 치즈버거? 불고기버거? 
//	private String burger_e_name; 		// 영어이름 *
//	private String burger_detail_img_path;//상세 이미지 *
	private int burger_price;			// 가격 
//	private String burger_btn_img_path;	// 메뉴사이트 이미지 *
//	private String burger_detail_comment;// 상세설명 *
//	private String burger_allergy;		// 알러지 정보 *
	private int b_seq;					// 시퀀스
}
