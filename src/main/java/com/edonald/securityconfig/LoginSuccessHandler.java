package com.edonald.securityconfig;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.edonald.member.dto.MemberDto;
import com.edonald.member.dto.SecurityUser;

import lombok.extern.log4j.Log4j2;
@Log4j2
public class LoginSuccessHandler implements AuthenticationSuccessHandler{


	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		SecurityUser user = (SecurityUser)authentication.getPrincipal();
		MemberDto member = user.getMemberDto();
		String auth = authentication.getAuthorities().toString();
		log.info("login success : "+auth +member.getUser_email() +" ip: " + request.getRemoteAddr() );
		String url="";
		if(auth.equals( "[ROLE_MEMBER]")) {
			url="/ed/deliverHome";
		}else if(auth.equals("[ROLE_SADMIN]")) {
			url="/ed/deliverHome";
		}else if(auth.equals("[ROLE_HADMIN]")) {
			url = "/ed/deliverHome";
	}
		response.sendRedirect(url);
		
	}

}
