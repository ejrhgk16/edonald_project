package com.edonald.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value = "/main/main.do", method = RequestMethod.GET )
	public String mainmain() {
		return "main/main";
	}
}
