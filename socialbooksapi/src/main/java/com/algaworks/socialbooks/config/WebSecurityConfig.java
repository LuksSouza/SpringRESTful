package com.algaworks.socialbooks.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("algaworks")
		.password("s3nh4").roles("USER");
	}
	
	protected void configure(HttpSecurity http) throws Exception {
		http.
			authorizeRequests()
			.antMatchers("/h2-console/**").permitAll()
			.anyRequest().authenticated()
			.and()
				.httpBasic()
			.and()
				.csrf().disable();
		
		//Fonte:https://stackoverflow.com/questions/40165915/why-does-the-h2-console-in-spring-boot-show-a-blank-screen-after-logging-in
		//Parece ser um bug do spring boot
		http.headers().frameOptions().disable();
	}

}
