package com.edonald.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value = "/main/main.do", method = RequestMethod.GET )
	public String mainMain() {
		return "main/main";
	}
	
	@RequestMapping(value = "/main/menu/burgermenu.do", method = RequestMethod.GET)
	public String mainMenuBurgermenu() {
		return "main/menu/burgermenu";
	}
	
	@RequestMapping(value = "/TEST.do", method = RequestMethod.GET)
	public String inquiry() {
		return "main/inquiry/inquiry";
	}
	@RequestMapping(value = "/TEST2.do", method = RequestMethod.GET)
	public String faqMain() {
		return "main/inquiry/faqMain";
	}
}
