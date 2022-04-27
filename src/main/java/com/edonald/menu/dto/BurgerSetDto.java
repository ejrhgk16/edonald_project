package com.edonald.menu.dto;

import lombok.Data;
/*
 * large set 은 메뉴에 표시 되는게 없음
 * delivery 에 표시될 data만 있으면된다.
 */
@Data
public class BurgerSetDto {
	private int buger_lgset_code;			// 시퀀스
	private String buger_lgset_name;			// 이름
	private int buger_lgset_price;			// 가격
	private int buger_lgset_kcal;			// 칼로리 
	private String buger_lgset_img_path;		// 딜리버리 이미지
	private int buger_lgset_status;			// 제품상태		
}
