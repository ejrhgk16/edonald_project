package com.edonald.securityconfig;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import com.edonald.exception.AccessDeniedController;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	SecurityUserDetailService userDetailService;

	
	@Autowired
	@Qualifier("dataSource")
	private DataSource dataSource;
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public PersistentTokenRepository persistentTokenRepository() {
		JdbcTokenRepositoryImpl repo = new JdbcTokenRepositoryImpl();
		repo.setDataSource(dataSource);
		return repo;
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.userDetailsService(userDetailService)
		.csrf().disable()
		.authorizeRequests()
		.antMatchers("/ed/**").permitAll()
		//.antMatchers("/sadmin/**").access("hasRole('ROLE_SADMIN')")
		.antMatchers("/sample/admin")
		.access("hasRole('ROLE_ADMIN')");

		http
		.formLogin().loginPage("/ed/deliverHome")
		.loginProcessingUrl("/ed/memberLogin.do")
		.successHandler(new LoginSuccessHandler())
		.failureHandler(new LoginFailHandler());
	
		http.exceptionHandling().accessDeniedPage("/error/accessDenied");
	
		http
		.logout().logoutUrl("/ed/logout.do").invalidateHttpSession(true)
		.deleteCookies("remember-me", "JSESSIONID")
		.logoutSuccessUrl("/ed/deliverHome");
		
		/* 자동 로그인 설정 */
		http.rememberMe()
		  .key("wjdejrghk") //쿠키에 사용되는 값을 암호화하기 위한 키(key)값
		  .rememberMeParameter("remember-me")
		  .userDetailsService(userDetailService)
		  .tokenRepository(persistentTokenRepository()) //DataSource 추가
		  .tokenValiditySeconds(60*60*24*7); //토큰 유지 시간(초단위) - 일주일
	}

}
