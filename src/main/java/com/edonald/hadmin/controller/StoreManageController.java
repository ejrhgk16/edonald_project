package com.edonald.hadmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edonald.hadmin.dto.StoreDto;
import com.edonald.hadmin.dto.StorePageCriteria;
import com.edonald.hadmin.dto.StorePageDto;
import com.edonald.hadmin.serivce.StoreManageService;

import kotlin.internal.RequireKotlin;

@Controller
public class StoreManageController {
	@Autowired
	private StoreManageService storeManageService;
	
	@GetMapping("/hadmin/usercheck")
	public String usercheck() {
		return "/admin/hadmin/usercheck/usercheck";
	}
	
	@GetMapping("/hadmin/storeUpdate")
	public String store() {
		return "/admin/hadmin/usercheck/storeUpdate";
	}
	
	@GetMapping("/hadmin/store")
	public String storeManage(Model model, StorePageCriteria cri) {
		List<StoreDto>storeList = storeManageService.getStoreList(cri);
		StorePageDto storePage = new StorePageDto(cri, storeManageService.getTotalNum());
		System.out.println(storeManageService.getTotalNum());
		System.out.println(storePage.getStartPage());
		System.out.println(storePage.getEndPage());
		model.addAttribute("storeList", storeList);
		model.addAttribute("pageMaker", storePage);
		return "/admin/hadmin/index2";
	}
	@GetMapping("/hadmin/storePage")
	public @ResponseBody List<StoreDto>storePage(Model model,StorePageCriteria cri) {
		List<StoreDto>storeList = storeManageService.getStoreList(cri);
		StorePageDto storePage = new StorePageDto(cri, storeManageService.getTotalNum());
		System.out.println(cri.getSearch() + "    --  searc");
		model.addAttribute("pageMaker", storePage);
		return storeList;
	}

	
	@GetMapping("/hadmin/storeRegister")
	public String storeRegister() {
		return "/admin/hadmin/usercheck/storeRegister";
	}
	
	@PostMapping("/hadmin/storeRegister") 
	public @ResponseBody void  storeRegisterDo(@RequestBody StoreDto storeDto) {
		System.out.println(storeDto.getStore_driverthru());
		//storeManageService.registerStore(storeDto);
	}
	
	
	}
	
