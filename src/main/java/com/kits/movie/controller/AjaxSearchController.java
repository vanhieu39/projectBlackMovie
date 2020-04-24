package com.kits.movie.controller;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kits.movie.dao.GenreMapper;
import com.kits.movie.entity.Genre;



@Controller
public class AjaxSearchController {
	@Autowired
	GenreMapper genreMapper;

	 @RequestMapping("/filter")
 	 public String getGetAll(Model model) {
		List<Genre> list_genre = genreMapper.getAllGenres();
		System.out.println(list_genre.size());
		model.addAttribute("list_genre", list_genre);	
		return "filter";
 	 }
	 
	    @RequestMapping("/ajax")
	    public ModelAndView helloAjaxTest() {
	        return new ModelAndView("result", "message", "Crunchify Spring MVC with Ajax and JQuery Demo..");
	    }
	 
	    @RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
	    public @ResponseBody
	    String getTime() {
	 
	        Random rand = new Random();
	        float r = rand.nextFloat() * 100;
	        String result = "<br>Next Random # is <b>" + r + "</b>. Generated on <b>" + new Date().toString() + "</b>";
	        System.out.println("Debug Message from CrunchifySpringAjaxJQuery Controller.." + new Date().toString());
	        return result;
	    }
	}