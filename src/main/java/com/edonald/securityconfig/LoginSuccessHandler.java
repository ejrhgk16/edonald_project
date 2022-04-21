package com.edonald.securityconfig;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class LoginSuccessHandler implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		String auth = authentication.getAuthorities().toString();
		String url="";
		if(auth.equals( "ROLE_MEMBER")) {
			url="/delivery/";
		}else if(auth.equals("ROLE_STORE_ADMIN")) {
			url="/storeadmin/";
		}else if(auth.equals("ROLE_HEAD_ADMIN")) {
			url = "/headadmin/";
	}
		response.sendRedirect(url);
		
	}

}
