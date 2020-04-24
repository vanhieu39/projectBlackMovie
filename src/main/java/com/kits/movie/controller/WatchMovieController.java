package com.kits.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kits.movie.dao.MovieMapper;
import com.kits.movie.dao.SerialMapper;
import com.kits.movie.entity.Movie;

@Controller @RequestMapping("watch")
public class WatchMovieController {
	@Autowired
	MovieMapper movieMapper;
	
	@Autowired
	SerialMapper serialMapper;
	
	@RequestMapping("/watch-movie")
	public String watchMovie(@RequestParam(name = "movieId") int movieId , Model model ) {
		Movie movieCur = movieMapper.findMovieById(movieId);
		if(movieCur.getId_film() == null) {
			String message = "Not Found Movie";
		} else {
			model.addAttribute("movie", movieCur);
		}
		String link = "../movie/movies-short";
		model.addAttribute("link", link);
		return "watch-movie";
	}
	
	@RequestMapping("/watch-series")
	public String watchMovieSeries(@RequestParam(name = "movieId") int movieId, Model model , @RequestParam(name = "serialId") int serialId ) {
		Movie movieCur = movieMapper.findMovieById(movieId);
		if(movieCur.getId_film() == null) {
			String message = "Not Found Movie";
		} else {
			model.addAttribute("movie", movieCur);
		}
		List<Movie> movies = movieMapper.getMoviesBySerialId(serialId);
		model.addAttribute("serialId", serialId);
		model.addAttribute("movies", movies);		
		String link = "../serial/series-allpaginate";
		model.addAttribute("link", link);
		return "watch-movie";
	}
	
}