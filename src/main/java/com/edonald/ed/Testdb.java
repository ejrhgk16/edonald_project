package com.edonald.ed;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edonald.mapper.TestMapper;


@Controller
@RequestMapping("/test/*")
public class Testdb {
	@Autowired 
	TestMapper mapper;
	
	@GetMapping("/insert")
	public void insert() {
		System.out.println("abc");
		TestDto dto = new TestDto();
		dto.setId(1);
		dto.setId(222);
		dto.setName("testest2222");
		mapper.insertTest(dto);

	}
	
	@GetMapping("/img")
	public String s3imgtest() {
		return "s3imgtest";
	}
	
}
