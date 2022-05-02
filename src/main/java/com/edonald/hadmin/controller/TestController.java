package com.edonald.hadmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	@RequestMapping(value = "/hadmin/index", method = RequestMethod.GET)
	public String hadminIndex() {
		return "admin/hadmin/index2";
	}
	
	@RequestMapping(value = "/hadmin/register/burger", method = RequestMethod.GET)
	public String hadminRegisterBurger() {
		return "admin/hadmin/menu/burgerRegister";
	}
	
	@RequestMapping(value = "/hadmin/board/burger", method = RequestMethod.GET)
	public String hadminBurger() {
		return "admin/hadmin/menu/burgerRegister";
	}
	
	@RequestMapping(value = "/TEST5.do", method = RequestMethod.GET)
	public String test5() {
		return "admin/hadmin/test";
	}
}

