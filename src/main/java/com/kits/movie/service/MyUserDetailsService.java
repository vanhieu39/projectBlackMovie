package com.kits.movie.service;

import javax.inject.Inject;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.kits.movie.dao.UserMapper;
import com.kits.movie.entity.User;

@Service
public class MyUserDetailsService implements UserDetailsService{

	@Inject
	UserMapper userDAO;
	
	@Override
	public User loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		User user = null;
		try {
			user = userDAO.read(username);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return user;
	}

}
