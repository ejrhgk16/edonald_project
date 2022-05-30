package com.edonald.exception;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.extern.log4j.Log4j2;

@Log4j2
@ControllerAdvice
public class ExceptionController  {

//	@ExceptionHandler(Exception.class)
//	public String except(HttpServletRequest req) {
//		log.error("Exception " + "url : " + req.getRequestURL() + " ip : "+req.getRemoteAddr() );
//		return "/delivery/error/error";
//	}
//	
	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(code = HttpStatus.NOT_FOUND)
	public String handle404(NoHandlerFoundException ex, HttpServletRequest req) {
		log.warn("NoHandlerFoundException " + "url : " + req.getRequestURL() + " ip : "+req.getRemoteAddr());
		return "/delivery/error/error404";
	}
	



	
}
