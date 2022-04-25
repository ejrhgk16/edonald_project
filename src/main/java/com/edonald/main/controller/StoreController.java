package com.edonald.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {
	
	@RequestMapping(value = "main/store/main.do", method = RequestMethod.GET )
	public String storemain() {
		return "main/store/main";
	}
	@RequestMapping(value = "main/store/event.do", method = RequestMethod.GET)
	public String event() {
		return "main/store/event";
	}
	
	@RequestMapping(value = "main/store/mcdrive.do", method = RequestMethod.GET)
	public String mainmcdrive() {
		return "main/store/mcdrive";
	}
	
	@RequestMapping(value = "main/store/rental.do", method = RequestMethod.GET)
	public String rental() {
		return "main/store/rental";
	}
	
	@RequestMapping(value = "main/store/list.do", method = RequestMethod.GET)
	public String rental() {
		return "main/store/rental";
	}
}
