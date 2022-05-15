package com.edonald.sadmin.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edonald.sadmin.service.SadminMenuService;

@Controller
public class SadminController {
	
	@Autowired
	private SadminMenuService sService;
	
	@RequestMapping( value = "/sadmin/test" , method = RequestMethod.GET)
	public String testMenu(Model model,String type,String store) {
		model.addAttribute("list",sService.listAll(type));
		model.addAttribute("store",store);
		return "admin/sadmin/menu/burgerNset";
	}
	
	@RequestMapping( value = "/sadmin/index", method = RequestMethod.GET)
	public String sadminHome() {
		return "admin/sadmin/index";
	}
	
	@RequestMapping(value = "/sadmin/menu", method = RequestMethod.POST)
	public String sadminMenu(Model model,String type,String store) {
		model.addAttribute("list",sService.listAll(type));
		model.addAttribute("store",store);
		return "admin/sadmin/menu/burgerNset";
	}
	
	
	// 아직 미완
	@RequestMapping(value = "/sadmin/blockMenu.do", method = RequestMethod.GET)
	public void sadminBlockList(String store,String seq) {
		System.out.println("insert do");
		Map<String, String> map = new HashMap<String, String>();
		map.put("store", store);
		map.put("seq", seq);
		sService.insertBlock(map);
		System.out.println("insert ok");
	}
	
	@RequestMapping(value = "/sadmin/blockMenu.do", method = RequestMethod.DELETE)
	public void sadminUnBlockList(String store,String seq) {
		System.out.println("delete do");
		Map<String, String> map = new HashMap<String, String>();
		map.put("store", store);
		map.put("seq", seq);
		sService.deleteBlock(map);
		System.out.println("delete ok");
	}
	
}
