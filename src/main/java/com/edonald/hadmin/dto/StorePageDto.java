package com.edonald.hadmin.dto;

import lombok.Data;

@Data
public class StorePageDto {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private StorePageCriteria cri;
	
	public StorePageDto(StorePageCriteria cri, int total) {
		this.cri=cri;
		this.total=total;
		this.endPage = (int)(Math.ceil(cri.getPageNum()/4.0))*4;//ceil올림처리
		this.startPage = this.endPage - 3;
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount() ));
		if(realEnd<this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage>1;
		this.next=this.endPage<realEnd;
	}
}
