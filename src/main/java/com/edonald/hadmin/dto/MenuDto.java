package com.edonald.hadmin.dto;

import lombok.Data;

@Data
public class MenuDto {
	private String code;			// 코드명
	private String name;			// 이름
	private int kcal;			// 칼로리 
	private String img_path;		// 딜리버리 이미지
	private String set_img_path; // 세트 이미지 *
	private int status;			// 제품상태 
	private int category_code;			// 치즈버거? 불고기버거?
	private String type;			// 버거종류 (단품,세트,라지세트) *
	private int price;			// 가격
	private String allergy;		// 알레르기 정보 "토마토, 난류, 우유, 대두, 밀"
 	private int seq;					// 시퀀스
	
	
//	private String burger_n_img_path;	// 영양 정보 이미지 *
//	private String burger_e_name; 		// 영어이름 *
//	private String burger_detail_img_path;//상세 이미지 *
//	private String burger_btn_img_path;	// 메뉴사이트 이미지 *
//	private String burger_detail_comment;// 상세설명 *
//	private String burger_allergy;		// 알러지 정보 *

}
