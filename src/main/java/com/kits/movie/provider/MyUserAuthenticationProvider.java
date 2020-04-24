package com.kits.movie.provider;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.kits.movie.entity.User;
import com.kits.movie.service.MyUserDetailsService;

@Component
public class MyUserAuthenticationProvider implements AuthenticationProvider{

	@Qualifier("myUserDetailService")
	private MyUserDetailsService myUserDetailService;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		// TODO Auto-generated method stub
		
		UsernamePasswordAuthenticationToken authToken = (UsernamePasswordAuthenticationToken) authentication;
		
		User user = myUserDetailService.loadUserByUsername(authToken.getName());
		
		if(user == null) {
			throw new UsernameNotFoundException(authToken.getName());
		}
		if(!matchPassword(user.getPassword(),authToken.getCredentials())) {
			@SuppressWarnings("unchecked")
			List<GrantedAuthority> authorities = (List<GrantedAuthority>) user.getAuthorities();
			return new UsernamePasswordAuthenticationToken(user, null,authorities);
		}
		
		return null;
	}

	private boolean matchPassword(String password, Object credentials) {
		// TODO Auto-generated method stub
		return password.equals(credentials);
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
