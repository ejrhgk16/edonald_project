package com.edonald.menu.dto;

import lombok.Data;

@Data
public class SideDto {
	private int side_code;			// 시퀀스
	private String side_name;			// 이름
	private int side_kcal;			// 칼로리 
	private String side_img_path;		// 딜리버리 이미지
	private int side_status;			// 제품상태	
	private String side_n_img_path;	// 영양 정보 이미지
	private int category_code;			// 치즈버거? 불고기버거? 
	private String side_e_name; 		// 영어이름
	private String side_detail_img_path;//상세 이미지
	private int side_price;			// 가격
	private String side_btn_img_path;	// 메뉴사이트 이미지
	private String side_detail_comment;// 상세설명
	private String side_allergy;		// 알러지 정보
}
