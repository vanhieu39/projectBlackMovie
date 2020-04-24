package com.kits.movie.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kits.movie.dao.GenreMapper;
import com.kits.movie.entity.Genre;

@Controller 
@RequestMapping("manager")
public class AdminGenreController {
	@Autowired GenreMapper genreMapper;	
	
	@RequestMapping("/genres")
	public String genreIndex(Model model) {
		List<Genre> list_genres = genreMapper.getAllGenres();
		model.addAttribute("list_genres", list_genres);
		return "admin/list-genres";
	}
	
	@RequestMapping("/form-genre")
	public String showFormGenre(Model model) {				
		model.addAttribute("genre", new Genre());
		return "admin/form-genre";
	}
	
	@RequestMapping("/form-update")
	public String showFormGenreUpdate(Model model,@RequestParam("categoryId") int categoryId) {				
		Genre genre = genreMapper.getGenreName(categoryId);
		model.addAttribute("genre", genre);
		System.out.println("Show Form Updated Process !"+ genre.isIs_active() + genre.getGenre_id());
		return "admin/form-genre";
	}
	
	@RequestMapping("/saveProcessGenre")
	public String processGenre(@ModelAttribute("genre") Genre genre, Model model) {	       		
		if(genre.getGenre_id() == null){
			String message = "Success Added New :" +genre.getGenre_name() +" Active :" + genre.isIs_active();
			model.addAttribute("message", message);
			genreMapper.saveGenre(genre);
		}else{
			System.out.println("Updated Process !");
			String message = "Success Updated :" +genre.getGenre_name() +" Active :" + genre.isIs_active();
			model.addAttribute("message", message);
			genreMapper.updateGenre(genre);
		}		
		return "redirect:/manager/genres";
	}
	
	@RequestMapping("/deleteGenre")
	public String deleteGenre(@RequestParam int genreId, Model model) {	        		
		genreMapper.deleteGenre(genreId);	
		String message = "Deleted Success Genre:" +genreId;
		model.addAttribute("message", message);
		return "redirect:/manager/genres";
	}
}
