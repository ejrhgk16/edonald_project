package com.edonald.hadmin.dto;

import lombok.Data;

@Data
public class StorePageCriteria {
	private int pageNum;
	private int amount;
	
	private String type;
	private String search;
	
	public StorePageCriteria() {
		this.pageNum =1;
		this.amount =7;
	}
	
	public StorePageCriteria(int pageNum, int amount) {
		this.pageNum =pageNum;
		this.amount = amount;
	}
}
