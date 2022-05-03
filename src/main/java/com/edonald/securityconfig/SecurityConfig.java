package com.edonald.securityconfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	SecurityUserDetailService userDetailService;
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.userDetailsService(userDetailService)
		.csrf().disable()
		.authorizeRequests()
		.antMatchers("/ed/**").permitAll()
		.antMatchers("/sample/admin")
		.access("hasRole('ROLE_ADMIN')");

		http
		.formLogin().loginPage("/ed/deliverHome")
		.loginProcessingUrl("/ed/memberLogin.do")
		.successHandler(new LoginSuccessHandler());
		//http.exceptionHandling().accessDeniedPage("/system/accessDenied");
		http
		.logout().logoutUrl("/ed/logout.do").invalidateHttpSession(true).logoutSuccessUrl("/ed/deliverHome");
		
	}

}
