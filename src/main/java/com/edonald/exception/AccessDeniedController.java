package com.edonald.exception;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class AccessDeniedController  {

	@GetMapping("/error/accessDenied")
	public String accessDenied(HttpServletRequest req) {
		log.error("ACCESSDENIED :" + "url : " + req.getRequestURL() + " ip: "+req.getRemoteAddr());
		return "/delivery/error/accessDenied";
	}

}
