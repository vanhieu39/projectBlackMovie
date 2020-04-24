package com.kits.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.kits.movie.dao.GenreMapper;

@Controller @RequestMapping("/genre")
public class GenreController {
	
	@Autowired
	GenreMapper genreMapper;	
	
	@RequestMapping("/genres")
	public ModelAndView genreIndex() {
		ModelAndView mav = new ModelAndView("list-genres");
		mav.addObject("list_genres", genreMapper.getAllGenres());
		return mav;
	}
}