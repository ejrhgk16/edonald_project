package com.edonald.menu.dto;

import lombok.Data;

@Data
public class BurgerDto {
	private String burger_code;			// 코드명
	private String burger_name;			// 이름
	private int burger_kcal;			// 칼로리 
	private String burger_img_path;		// 딜리버리 이미지
	private String burger_set_img_path; // 세트 이미지 *
	private int burger_status;			// 제품상태 
	private int category_code;			// 치즈버거? 불고기버거?
	private int burger_type;			// 버거종류 (단품,세트,라지세트) *
	private int burger_price;			// 가격
	private String burger_allergy;		// 알레르기 정보 "토마토, 난류, 우유, 대두, 밀"
 	private int b_seq;					// 시퀀스
	
	
//	private String burger_n_img_path;	// 영양 정보 이미지 *
//	private String burger_e_name; 		// 영어이름 *
//	private String burger_detail_img_path;//상세 이미지 *
//	private String burger_btn_img_path;	// 메뉴사이트 이미지 *
//	private String burger_detail_comment;// 상세설명 *
//	private String burger_allergy;		// 알러지 정보 *

}
