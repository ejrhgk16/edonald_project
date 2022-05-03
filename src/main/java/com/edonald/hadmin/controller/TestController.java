package com.edonald.hadmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {

	@RequestMapping(value = "/TEST5.do", method = RequestMethod.GET)
	public String test5() {
		return "admin/hadmin/test";
	}
}

