package com.kits.movie.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kits.movie.dao.CountryMapper;
import com.kits.movie.entity.Country;
import com.kits.movie.entity.Genre;
@Controller 
@RequestMapping("manager")
public class AdminCountryController {

	@Autowired
	CountryMapper mapper;

	 @RequestMapping("/countries")
	 public ModelAndView countriesActive(Model model, @RequestParam(value = "page",defaultValue = "1") int page) {		
		ModelAndView mav = new ModelAndView("admin/list_contries");		
		List<Country> list =  mapper.getAllcountries();
		int start = page * 10 - 10;		
		mav.addObject("countries", mapper.getAllcountriesPage(start));
		int nOfPages = (list.size()) / 10;
	    if (nOfPages % 10 != 0) {
	        nOfPages++;
	    }      
	    String link = "countries";
	    mav.addObject("link", link);
	    mav.addObject("noOfPages", nOfPages);      
	    mav.addObject("page", page);
		return mav;
	 }	
		
	
	@RequestMapping("/form-country")
	public String showFormGenre(Model model) {				
		model.addAttribute("genre", new Genre());
		return "admin/form-genre";
	}
	
//	@RequestMapping("/form-update")
//	public String showFormGenreUpdate(Model model,@RequestParam("countryId") int countryId) {				
//		Country c = mapper.getGenreName(countryId);
//		model.addAttribute("genre", genre);
//		System.out.println("Show Form Updated Process !"+ genre.isIs_active() + genre.getGenre_id());
//		return "admin/form-genre";
//	}
//	
//	@RequestMapping("/saveProcessGenre")
//	public String processGenre(@ModelAttribute("genre") Genre genre, Model model) {	       		
//		if(genre.getGenre_id() == null){
//			String message = "Success Added New :" +genre.getGenre_name() +" Active :" + genre.isIs_active();
//			model.addAttribute("message", message);
//			genreMapper.saveGenre(genre);
//		}else{
//			System.out.println("Updated Process !");
//			String message = "Success Updated :" +genre.getGenre_name() +" Active :" + genre.isIs_active();
//			model.addAttribute("message", message);
//			genreMapper.updateGenre(genre);
//		}		
//		return "redirect:/manager/genres";
//	}
//	
//	@RequestMapping("/deleteGenre")
//	public String deleteGenre(@RequestParam int genreId, Model model) {	        		
//		genreMapper.deleteGenre(genreId);	
//		String message = "Deleted Success Genre:" +genreId;
//		model.addAttribute("message", message);
//		return "redirect:/manager/genres";
//	}
}
