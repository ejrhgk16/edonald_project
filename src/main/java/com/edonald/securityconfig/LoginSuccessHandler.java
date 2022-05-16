package com.edonald.securityconfig;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class LoginSuccessHandler implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		String auth = authentication.getAuthorities().toString();
		System.out.println(" auth  -- " + auth);
		String url="";
		if(auth.equals( "[ROLE_MEMBER]")) {
			System.out.println("로그인 성공");
			url="/ed/deliverHome";
		}else if(auth.equals("[ROLE_SADMIN]")) {
			System.out.println("지점장 로그인 성공");
			url="/ed/deliverHome";
		}else if(auth.equals("[ROLE_HADMIN]")) {
			url = "/headadmin/";
	}
		response.sendRedirect(url);
		
	}

}
