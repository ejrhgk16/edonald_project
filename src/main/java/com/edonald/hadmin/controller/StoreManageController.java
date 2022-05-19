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
	public String storeUpdate(Model model,String store_code) {
		model.addAttribute("store",storeManageService.getStore(store_code));
		return "/admin/hadmin/usercheck/storeUpdate";
	}
	
	@ResponseBody
	@PostMapping("/hadmin/storeUpdate.do")
	public void storeUpdateDo(StoreDto dto) {
		System.out.println(dto.getStore_status());
		storeManageService.updateStore(dto);
	}
	
	@GetMapping("/hadmin/store")
	public String storeManage(Model model) {
		List<StoreDto>storeList = storeManageService.getStoreList();
		model.addAttribute("storeList", storeList);
		return "/admin/hadmin/index2";
	}

	
	@GetMapping("/hadmin/storeRegister")
	public String storeRegister() {
		return "/admin/hadmin/usercheck/storeRegister";
	}
	
	@PostMapping("/hadmin/storeRegister") 
	public @ResponseBody void  storeRegisterDo(@RequestBody StoreDto storeDto) {
		System.out.println(storeDto.getStore_driverthru());
		storeManageService.registerStore(storeDto);
	}
	
	
	}
	
