package com.kits.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kits.movie.dao.SerialMapper;
import com.kits.movie.entity.Serial;

@Controller @RequestMapping("/serial")
public class SerialMovieController {

	@Autowired
	SerialMapper mapper;
	
	// get Count all
	@RequestMapping("/series-all")
	public String getAllSeries(Model model) {
		List<Serial> list_series = mapper.findAll();
		model.addAttribute("list_series", list_series);	
		return "list_series";
	}	
	
	// Section 3 limit 12 item serial
	@RequestMapping("/series-allpaginate")
	public String getAllSeriesPagination(@RequestParam(name = "page" ,defaultValue = "1") int page ,Model model) {
		List<Serial> list_series = mapper.findAll();		
		int rows = mapper.getRows(list_series);
		int nOfPages = rows / 20;
        if (nOfPages % 20 > 0) {
            nOfPages++;
        }          			
		list_series = mapper.findAllPaginate(page);		
		String message = "Phim Bộ Mới Page: "+page;
		String link = "series-allpaginate";		
		model.addAttribute("list_series", list_series);	
		model.addAttribute("link", link);	
		model.addAttribute("page", page);	
		model.addAttribute("message", message);	
		model.addAttribute("nOfPages", nOfPages);
		return "list_series";
	}	
	
	// Section 3 limit 12 item serial dont need movie have
	@RequestMapping("/series-new")
	public String getAllSeriesNew(Model model) {
		List<Serial> list_series = mapper.getAllSeriesNew12();
		model.addAttribute("list_series", list_series);	
		return "list_series";
	}
	
	// Section 2 limit 7 item serial dont need movie have
	@RequestMapping("/series-movie7")
	public String getAllSeriesMovie7(Model model) {
		List<Serial> list_series = mapper.getSeriesView7();
		model.addAttribute("list_series", list_series);	
		return "list_series";
	}
	
	@RequestMapping("/serialDetail")
	public String saveSerial(Model model, @RequestParam(name="seriesId") int id) {
		Serial serial = mapper.findT(id);
		model.addAttribute("serial", serial);	
		return "form-serial";
	}	
}
