package com.kits.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kits.movie.dao.CountryMapper;
import com.kits.movie.entity.Country;

@Controller @RequestMapping("/country")
public class CountryController {
	
	@Autowired
	CountryMapper mapper;
	
	@RequestMapping("/countries-all")
 	 public String getAllcountries(Model model) {
		List<Country> countries = mapper.getAllcountries();
		String greetings = "Greetings, Spring MVC Now All!";
		model.addAttribute("message", greetings);	
		model.addAttribute("countries", countries);	
		return "countries";
 	 }
 
	 @RequestMapping("/countries-active")
	 public ModelAndView countriesActive(Model model) {		
		ModelAndView mav = new ModelAndView("list-movie");
		String greetings = "Greetings, Spring MVC Now New!";
		mav.addObject("message", greetings);
		mav.addObject("list_movies", mapper.countriesActive());
		return mav;
	 }	 
}
