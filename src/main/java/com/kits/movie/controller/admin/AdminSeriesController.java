package com.kits.movie.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kits.movie.dao.MovieMapper;
import com.kits.movie.dao.SerialMapper;
import com.kits.movie.dao.SerialMoviesMapper;
import com.kits.movie.entity.Movie;
import com.kits.movie.entity.Serial;

@Controller
@RequestMapping("manager")
public class AdminSeriesController {
	@Autowired
	SerialMapper serialMapper;	
	@Autowired
	MovieMapper movieMapper;
	@Autowired
	SerialMoviesMapper smMapper;
	
	private final String UPLOAD_DIRECTORY = "C:/Program Files/Apache Software Foundation/Tomcat 8.5/webapps/source/";
	private final String SOURCE_LINK = "https://bmovie.vn/source/";

	@RequestMapping("/showFormSeries")
	public ModelAndView countriesActive(Model model) {		
		ModelAndView mav = new ModelAndView("admin/form-series");
		mav.addObject("series", new Serial());
		List<Movie>movies = movieMapper.getMoviesAdminAll();
		mav.addObject("list_movies", movies);
		return mav;
	}	 
		
	@RequestMapping("/series")
	public ModelAndView seriesListPaginate(@RequestParam(name="page",defaultValue = "1") int page) {
		ModelAndView mav = new ModelAndView("admin/list_series");
		int start = (page * 10) - 10;		
		List<Serial> list_series = serialMapper.findAll();
//		List<Serial> list_series = smMapper.getManagerAll();
		mav.addObject("list_series", serialMapper.getManagerPageSeries(start));
		int rows = serialMapper.getRows(list_series);
		int nOfPages = rows / 10;
        if (nOfPages % 10 != 0) {
            nOfPages++;
        }      
        String link = "../manager/series";
        mav.addObject("link", link);
        mav.addObject("noOfPages", nOfPages);      
        mav.addObject("page", page);
		return mav;
	}		
	
//	joinall
	
	@RequestMapping(value = "/saveSeries", method = RequestMethod.POST)
	public String saveSeries(@ModelAttribute("series") Serial series, Model model) {
		String message = "Not Found";
		if(series.getId()==null) {
			serialMapper.insert(series);
			System.out.println(series.getName()+series.getTotals_movie()+series.getFk_movieid()+series.getStatus());
			message = "Success :" + series.getName_film();	
			return "redirect:/manager/series";
		}
		model.addAttribute("message", message);
		return "redirect:/admin/list_series";		
	}
	
	@RequestMapping("/updateSeries")
	public ModelAndView updateseries(@RequestParam("seriesID") int seriesID) {
		ModelAndView mav = new ModelAndView("admin/addNewseries");
//		series series = seriesmapper.findseriesById(seriesID);
//		mav.addObject("series",series);
		return mav;
	}
	@RequestMapping("/deleteSeries")
	public String deleteseries(@RequestParam("seriesID") int seriesID) {
//		seriesmapper.deleteseries(seriesID);
//		syslog.saveLog(logservice.logDeleteseries(seriesID));
		return "redirect:/manager/series?action=3";
	}
}
