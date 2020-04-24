package com.kits.movie.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kits.movie.dao.GenreMapper;
import com.kits.movie.dao.MovieMapper;
import com.kits.movie.entity.Genre;
import com.kits.movie.entity.Movie;


@Controller
@RequestMapping("manager")
public class Admin {
	@Autowired MovieMapper movieMapper;
	@Autowired GenreMapper genreMapper;
	
//	@RequestMapping("/home")
//	public String homeAdmin(Model model) {
//		List<Movie> suggests = movieMapper.getMoviesAdminAll();
//		model.addAttribute("suggests",suggests);
//		return "admin/homeAdmin";
//	}
	@RequestMapping("/table")
	public String table() {
		return "admin/table";
	}
	@RequestMapping("/form-user")
	public String formUser() {
		return "admin/form-user";
	}
	@RequestMapping("/forms")
	public String forms() {
		return "admin/forms";
	}
}
