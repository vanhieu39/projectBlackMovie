package com.kits.movie.controller.admin;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
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

import com.kits.movie.dao.ActorMapper;
import com.kits.movie.dao.CountryMapper;
import com.kits.movie.dao.GenreMapper;
import com.kits.movie.dao.KeywordMapper;
import com.kits.movie.dao.MovieMapper;
import com.kits.movie.entity.Actor;
import com.kits.movie.entity.Country;
import com.kits.movie.entity.Genre;
import com.kits.movie.entity.Keyword;
import com.kits.movie.entity.Movie;
@Controller
@RequestMapping("manager")
public class AdminMovieController {
	@Autowired
	MovieMapper movieMapper;
	@Autowired
	GenreMapper genresMapper;
	@Autowired
	CountryMapper countryMapper;
	@Autowired
	ActorMapper actorMapper;
	@Autowired
	KeywordMapper keywordMapper;
	private final String UPLOAD_DIRECTORY = "C:/Users/PC/GIT/blackless/src/main/webapp/resources/bootstrap/images";
//	private final String SOURCE_LINK = "";
	// CRUD ADMIN
	@RequestMapping("/showFormForMovie")
	public ModelAndView showFormForMovie() {
		ModelAndView mav = new ModelAndView("admin/form-movie");
		mav.addObject("movie", new Movie());
		List<Genre> genres = genresMapper.getAllGenres();
		mav.addObject("genres", genres);
		List<Country> countries = countryMapper.getAllcountries();
		mav.addObject("countries", countries);
		List<Actor> actors = actorMapper.getAllActor();
		mav.addObject("actors", actors);
		List<Keyword> keywords = keywordMapper.getAllKeywords();
		mav.addObject("keywords", keywords);
		return mav;
	}	
	// CRUD ADMIN
	@RequestMapping(value = "/saveProcessMovie", method = RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("movie") Movie movie){
		String fileName="";
		String fileNameFilm = "";
		String fileNameImageDetail1 = "";
		String fileNameImageDetail2 = "";
		String fileNameTrailer = "";		
		try {
			MultipartFile multipartFile = movie.getMultipartFile();
		      fileName = multipartFile.getOriginalFilename();
		      fileNameFilm = multipartFile.getOriginalFilename();
		      fileNameImageDetail1 = multipartFile.getOriginalFilename();
		      fileNameImageDetail2 = multipartFile.getOriginalFilename();
//		      fileNameTrailer = multipartFile.getOriginalFilename();
		      if(!fileName.equals("")) {
		    	  fileName = System.currentTimeMillis()+fileName;
				}
		      if(!fileNameFilm.equals("")) {
		    	  fileNameFilm = System.currentTimeMillis()+fileNameFilm;
				}
		      if(!fileNameImageDetail1.equals("")) {
		    	  fileNameImageDetail1 = System.currentTimeMillis()+fileNameImageDetail1;
				}
		      if(!fileNameImageDetail2.equals("")) {
		    	  fileNameImageDetail2 = System.currentTimeMillis()+fileNameImageDetail2;
				}
		      if(!fileNameTrailer.equals("")) {
		    	  fileNameTrailer = System.currentTimeMillis()+fileNameTrailer;
				}		      
		      File file = new File(UPLOAD_DIRECTORY, fileName);
				multipartFile.transferTo(file);
			  File fileNameFilmFile = new File(UPLOAD_DIRECTORY, fileNameFilm);
					multipartFile.transferTo(fileNameFilmFile);		
			 File fileNameImageDetail1Path = new File(UPLOAD_DIRECTORY, fileNameImageDetail1);
				multipartFile.transferTo(fileNameImageDetail1Path);
			 File fileNameImageDetail2Path = new File(UPLOAD_DIRECTORY, fileNameImageDetail2);
				multipartFile.transferTo(fileNameImageDetail2Path);
//			 File fileNameTrailerPath = new File(UPLOAD_DIRECTORY, fileNameTrailer);
//				multipartFile.transferTo(fileNameTrailerPath);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		if(!fileName.equals("")) {
			movie.setImage(fileName);
		}
		if(!fileNameFilm.equals("")) {
			movie.setLink_film("videos/"+fileNameFilm);
		}
		if(!fileNameImageDetail1.equals("")) {
			movie.setImage_detail1("/item-img/"+fileNameImageDetail1);
		}
		if(!fileNameImageDetail2.equals("")) {
			movie.setImage_detail2("/item-img/"+fileNameImageDetail2);
		}
//		if(!fileNameTrailer.equals("")) {
//			movie.setLink_trailer(SOURCE_LINK+"/videos/"+fileNameTrailer);
//		}
		
		if(movie.getId_film() == null){			
			movieMapper.saveMovie(movie);
		}else{
			movieMapper.updateMovie(movie);
		}		
		return "redirect:/manager/movies";
	}		
	// CRUD ADMIN
	@RequestMapping("/displayDeleteFormMovie")
	public String deleteMovie(@RequestParam("movieId") int movieId , Model model) {
		movieMapper.deleteMovie(movieId);
		String greetings = "Deleted A Movie :" + movieId;
		model.addAttribute("message", greetings);
		return "redirect:/admin/list_movies";
	} 
	// CRUD ADMIN Type Short
	@RequestMapping("/movies")
	public String listMovies(Model model,@RequestParam(name="page",defaultValue = "1") int page) {
		List<Movie> all = movieMapper.getMoviesAdminShortCountSize();		
		int start = page * 10 - 10;	
		List<Movie> suggests = movieMapper.getMoviesAdminShort(start);
		int nOfPages = (all.size()) / 10;
        if (nOfPages % 10 != 0) {
            nOfPages++;
        }      
		model.addAttribute("suggests",suggests);
		String link = "movies";
        model.addAttribute("link", link);
        model.addAttribute("noOfPages", nOfPages);
        model.addAttribute("page", page);
		return "admin/list_movies";
	}
    // FORMAT DATE
    public String formatByDate(Date open_date) {
		SimpleDateFormat sm = new SimpleDateFormat("yyyy-MM-dd");	 
	    String strDate = sm.format(open_date);	   
        return strDate;
	}
}
