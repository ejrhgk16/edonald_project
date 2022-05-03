package com.edonald.faq.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edonald.faq.dto.FaqDto;
import com.edonald.faq.dto.PageDto;
import com.edonald.faq.service.FaqService;

@Controller
public class FaqController {
	
	@Autowired
	private FaqService service;
	
	@RequestMapping(value = "/ed/faq", method = RequestMethod.GET )
	public String startFaq( Model model , PageDto data) {
		data.setStart(1);
		data.setEnd(10);
		data.setSubject("ALL");
		model.addAttribute("list",service.listAll(data));
		model.addAttribute("data",data);
		return "/main/inquiry/faqMain";
	}
	
	@RequestMapping(value = "/ed/faqMore", method = RequestMethod.GET )
	public @ResponseBody PageDto MoreFaq( Model model , PageDto data) {
		data.setList(service.listAll(data));
		data.setPage(service.listSize(data));
		
		System.out.println(data.getSearch());
		model.addAttribute("data",data);
		
	
		return data;
	}
	
}
