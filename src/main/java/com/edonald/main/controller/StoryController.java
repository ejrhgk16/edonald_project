package com.edonald.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoryController {

	
	
	
	@RequestMapping(value = "/story/main.do", method = RequestMethod.GET)
	public String storymain() {
		return "main/story/storyMain";
	}
	
	
	@RequestMapping(value = "/story/intro/brandintro.do", method = RequestMethod.GET)
	public String branchistory() {
		return "main/story/brandintro";
	}
	
	@RequestMapping(value = "/story/intro/brandhistory.do", method = RequestMethod.GET)
	public String brandhistory() {
		return "main/story/brandhistory";
	}
	
	
	@RequestMapping(value = "/story/society/list.do", method = RequestMethod.GET)
	public String societyList() {
		return "main/story/list";
	}
	
	
	@RequestMapping(value = "/story/society/scaleForGood.do", method = RequestMethod.GET)
	public String scaleForGood() {
		return "main/story/scaleForGood";
	}
	
	@RequestMapping(value = "/story/society/kidsSoccer.do", method = RequestMethod.GET)
	public String kidsSoccer() {
		return "main/story/kidsSoccer";
	}
	
	@RequestMapping(value = "/story/society/happyBurger.do", method = RequestMethod.GET)
	public String happyBurger() {
		return "main/story/happyBurger";
	}
	
	@RequestMapping(value = "story/society/safetyGuard.do", method = RequestMethod.GET)
	public String safetyGuard() {
		return "main/story/safetyGuard";
	}
	
	@RequestMapping(value = "story/society/mcDonaldHouse.do", method = RequestMethod.GET)
	public String mcDonaldHouse() {
		return "main/story/mcDonaldHouse";
	}
	
	@RequestMapping(value = "story/competition/farmToRestaurant.do", method = RequestMethod.GET)
	public String farmToRestaurant() {
		return "main/story/farmToRestaurant";
	}
	/*ajax °Ô½ÃÆÇ*/
	@RequestMapping(value = "story/competition/faq.do", method = RequestMethod.GET)
	public String faq() {
		return "main/story/faq";
	}
}


