package com.kits.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kits.movie.dao.CountryMapper;
import com.kits.movie.dao.GenreMapper;
import com.kits.movie.dao.KeywordMapper;
import com.kits.movie.dao.MovieMapper;
import com.kits.movie.dao.SerialMapper;
import com.kits.movie.entity.Country;
import com.kits.movie.entity.Genre;
import com.kits.movie.entity.Keyword;
import com.kits.movie.entity.Movie;
import com.kits.movie.entity.Serial;

@Controller 
public class HomeController {
	
	@Autowired
	MovieMapper movieMapper;	
	
	@Autowired
	SerialMapper serialMapper;
	
	@Autowired
	CountryMapper countryMapper;
	
	@Autowired
	GenreMapper genreMapper;
	
	@Autowired
	KeywordMapper keywordMapper;
	
	
	@RequestMapping("/")
//	public String indexAdmin() {
//		return "redirect:/manager/"; //	trả về trang admin cho máy Tomcat server
//	}
	public String index(Model model) {
		// SlideShow 8 --> 
		List<Movie> slideShow8 = movieMapper.getMoviesSlideShow8();
		// Section 1 ======= 8 Cinemax
		List<Movie> section1_8 = movieMapper.getMoviesShort8();
		//<!-- Section 1 TRAILER 8-->			
		List<Movie> section1_trailer8 = movieMapper.getMoviesTrailer8();
		
		//<!-- Section 2 Short 12-->	
		List<Movie> section2_12 = movieMapper.getMoviesShort12();				
		//<!-- Section 2 View SHORT 7-->  movies movies7 view_top > 7000 
		List<Movie> section2_short7 = movieMapper.getMoviesViewShort7();			
		//<!-- Section 2 View SERIES 7--> Series movies7 view_top > 7000
		List<Serial> section2_series7 = serialMapper.getSeriesView7();
		
		// <!-- Section 3 Series 12
		List<Serial> section3_12 = serialMapper.getAllSeriesNew12();

		
		// Section4 Keyword
		List<Keyword> keywords = keywordMapper.getAllKeywords();
		
		model.addAttribute("slideShow8", slideShow8);	 
		model.addAttribute("section1_8", section1_8);	
		model.addAttribute("section1_trailer8", section1_trailer8);	
		model.addAttribute("section2_12", section2_12);		
		model.addAttribute("section2_short7", section2_short7);	
		model.addAttribute("section2_series7", section2_series7);	
		model.addAttribute("section3_12", section3_12);	
		// NAV BAR DROPDOWN
		List<Country> countries = countryMapper.countriesActive();		
		List<Genre> genres = genreMapper.getAllGenres();		
		model.addAttribute("countries", countries);
		model.addAttribute("genres", genres);			
		model.addAttribute("keywords", keywords);	
		
		return "home";
	}
}
