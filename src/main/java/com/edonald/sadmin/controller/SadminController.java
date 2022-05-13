package com.edonald.sadmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SadminController {
	
	@RequestMapping( value = "/sadmin/index", method = RequestMethod.GET)
	public String sadminHome() {
		return "admin/sadmin/index";
	}
}
