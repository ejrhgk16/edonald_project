package com.edonald.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {
	
	@RequestMapping(value = "kor/store/main.do", method = RequestMethod.GET )
	public String storemain() {
		return "main/store/main";
	}
	@RequestMapping(value = "kor/store/event.do", method = RequestMethod.GET)
	public String event() {
		return "main/store/event";
	}
	
	@RequestMapping(value = "kor/store/mcdelivery.do", method = RequestMethod.GET)
	public String mcdelivery() {
		return "main/store/mcdelivery";
	}
	
	@RequestMapping(value = "kor/store/mcdrive.do", method = RequestMethod.GET)
	public String mcdrive() {
		return "main/store/mcdrive";
	}
	
	@RequestMapping(value = "kor/store/rental.do", method = RequestMethod.GET)
	public String rental() {
		return "main/store/rental";
	}
	
	@RequestMapping(value = "kor/store/list.do", method = RequestMethod.GET)
	public String list() {
		return "main/store/rental";
	}
}
