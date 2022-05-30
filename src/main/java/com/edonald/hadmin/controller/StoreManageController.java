package com.edonald.hadmin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
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
import com.edonald.member.dto.SecurityUser;

import kotlin.internal.RequireKotlin;
import lombok.extern.log4j.Log4j2;

@Log4j2
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
	public void storeUpdateDo(StoreDto dto, HttpServletRequest req) {
		log.info("storeupdate storecode: " + dto.getStore_code() +  " url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());
		storeManageService.updateStore(dto);
	}
	

	@GetMapping("/sadmin/storeUpdate")
	public String storeUpdateBySadmin(Authentication authentication, Model model) {
		SecurityUser user = (SecurityUser) authentication.getPrincipal(); 
		model.addAttribute("store",storeManageService.getStore(Integer.toString(user.getMemberDto().getStore_code())));
		return "/admin/hadmin/usercheck/storeUpdate";
	}	
	
	@ResponseBody
	@PostMapping("/sadmin/storeUpdate.do")
	public void storeUpdateDoBySadmin(StoreDto dto) {
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
	public @ResponseBody void  storeRegisterDo(@RequestBody StoreDto storeDto, HttpServletRequest req) {
		log.info("storeregister storecode: "+ storeDto.getStore_code() +  " url: " + req.getRequestURL() + " ip :" + req.getRemoteAddr());
		storeManageService.registerStore(storeDto);
	}
	
	
	}
	
