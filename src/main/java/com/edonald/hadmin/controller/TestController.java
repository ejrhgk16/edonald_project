package com.edonald.hadmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	@RequestMapping(value = "/ed/TEST4.do", method = RequestMethod.GET)
	public String adminMain() {
		return "admin/hadmin/index2";
	}
}

