package com.kits.movie.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kits.movie.dao.ActorMapper;
import com.kits.movie.dao.CountryMapper;
import com.kits.movie.dao.GenreMapper;
import com.kits.movie.dao.MovieMapper;
import com.kits.movie.dao.SerialMapper;
import com.kits.movie.entity.Actor;
import com.kits.movie.entity.Country;
import com.kits.movie.entity.Genre;
import com.kits.movie.entity.Movie;
import com.kits.movie.entity.Serial;

@Controller @RequestMapping("/movie")
public class MovieController {
	@Autowired
	MovieMapper mapper;	
	
	@Autowired
	ActorMapper actorMapper;
	
	@Autowired
	SerialMapper serialMapper;
	
	@Autowired
	GenreMapper genreMapper;
	
	@Autowired
	CountryMapper countryMapper;
	
	// <!-- Paginated All Cinemax 20 Size -->
	@RequestMapping("/movies-cinemax")
	public ModelAndView getMoviesCinemax(@RequestParam(name = "page") int page ) {
		ModelAndView mav = new ModelAndView("list-movie");
		String greetings = "Movies Cinemax Page :" + page;
		mav.addObject("message", greetings);
		mav.addObject("list_movies", mapper.getMoviesCinemax(page));
		// NAV BAR DROPDOWN
		List<Country> countries = countryMapper.countriesActive();		
		List<Genre> genres = genreMapper.getAllGenres();		
		mav.addObject("countries", countries);
		mav.addObject("genres", genres);
		return mav;
	}	
	
	// <!-- Paginated All Short New 20 Size --> 
	@RequestMapping("/movies-short")
	public ModelAndView movies_short(@RequestParam(name = "page" , defaultValue = "1") int page) {
		ModelAndView mav = new ModelAndView("list-movie");
		String greetings = "All Movies Short Page :" + page;
		mav.addObject("message", greetings);
		mav.addObject("list_movies", mapper.getMoviesNewShort(page));
		// NAV BAR DROPDOWN
				List<Country> countries = countryMapper.countriesActive();		
				List<Genre> genres = genreMapper.getAllGenres();		
				mav.addObject("countries", countries);
				mav.addObject("genres", genres);
		return mav;
	}	
	
	// <!-- Paginated All short7 Size -->
 	 @RequestMapping("/movies-short7")
 	 public String movies_short7(Model model, @RequestParam(value ="page", defaultValue = "1") int page ) {					
		List<Movie> list_movies = mapper.getMoviesViewShort7();
		String greetings = "All Movies at Page :" + page;
		model.addAttribute("message", greetings);	
		model.addAttribute("list_movies", list_movies);					
       int nOfPages = list_movies.size() / 20;
       if (nOfPages % 20 > 0) {
           nOfPages++;
       }      
    // NAV BAR DROPDOWN
    		List<Country> countries = countryMapper.countriesActive();		
    		List<Genre> genres = genreMapper.getAllGenres();		
    		model.addAttribute("countries", countries);
    		model.addAttribute("genres", genres);
       String link = "movies-all";
       model.addAttribute("link", link);
       model.addAttribute("noOfPages", nOfPages);
       model.addAttribute("page", page);	        
		return "list-movie";
 	 }
	 
	// <!-- Paginated All 20 Size -->
  	 @RequestMapping("/movies-all")
  	 public String movies_all(Model model, @RequestParam(value ="page", defaultValue = "1") int page ) {		
		int start = page * 20 - 20;		
		List<Movie> list_movies = mapper.getMoviesAll(start);
		String greetings = "All Movies at Page :" + page;
		model.addAttribute("message", greetings);	
		model.addAttribute("list_movies", list_movies);					
        int nOfPages = list_movies.size() / 20;
        if (nOfPages % 20 > 0) {
            nOfPages++;
        }      
        String link = "movies-all";
        model.addAttribute("link", link);
        model.addAttribute("noOfPages", nOfPages);
        model.addAttribute("page", page);	        
		return "list-movie";
  	 }

	
	// Page Detail To Watching
	@RequestMapping("/showMovieDetailMovie")
	public String showMovieDetail(@RequestParam("movieId") int movieId , Model model){
		model.addAttribute("movie", mapper.findMovieById(movieId));
		model.addAttribute("year", yearFormatByDate(mapper.findMovieById(movieId).getOpen_date()));	
		List<Actor> actors = actorMapper.getActorByMovieId(movieId);
		model.addAttribute("actors",actors);
		
		List<Country> fkcountries = countryMapper.getCountryByMovieId(movieId);
		model.addAttribute("fkcountries",fkcountries);
		
		List<Genre> fkgenres = genreMapper.getGenresByMovieId(movieId);		
		model.addAttribute("fkgenres",fkgenres);
		
		int fkGenre = 0;
		for (Genre genre : fkgenres) {
			fkGenre = genre.getGenre_id();
			System.out.println(fkGenre);
		}
		
		if(fkGenre !=0 ) {
			List<Movie> suggests = mapper.getMoviesSuggest4(fkGenre);
			model.addAttribute("suggests",suggests);
		}		
		// NAV BAR DROPDOWN
		List<Country> countries = countryMapper.countriesActive();		
		List<Genre> genres = genreMapper.getAllGenres();		
		model.addAttribute("countries", countries);
		model.addAttribute("genres", genres);
		
		return "detail-movie";
	}
	
	// Page Detail To Watching
	@RequestMapping("/showMovieDetailSeries")
	public String showMovieDetailSeries(@RequestParam("movieId") int movieId, @RequestParam("serialId") int serialId , Model model){
		model.addAttribute("movie", mapper.findMovieById(movieId));
		model.addAttribute("year", yearFormatByDate(mapper.findMovieById(movieId).getOpen_date()));	
		model.addAttribute("serialId", serialId);
		List<Actor> actors = actorMapper.getActorByMovieId(movieId);
		model.addAttribute("actors",actors);
		model.addAttribute("serialId",serialId);		
		
		List<Country> fkcountries = countryMapper.getCountryByMovieId(movieId);
		model.addAttribute("fkcountries",fkcountries);
		
		List<Genre> fkgenres = genreMapper.getGenresByMovieId(movieId);		
		model.addAttribute("fkgenres",fkgenres);
		int fkGenre = 0;
		for (Genre genre : fkgenres) {
			fkGenre = genre.getGenre_id();
			System.out.println(fkGenre);
		}
		
		if(fkGenre !=0 ) {
			List<Movie> suggests = mapper.getMoviesSuggest4(fkGenre);
			model.addAttribute("suggests",suggests);
		}
		// NAV BAR DROPDOWN
		List<Country> countries = countryMapper.countriesActive();		
		List<Genre> genres = genreMapper.getAllGenres();		
		model.addAttribute("countries", countries);
		model.addAttribute("genres", genres);
		
		return "detail-movie";
	}
		
	// NAVBAR year
	 @RequestMapping(value = "/moviesYear") 
	 public ModelAndView moviesShortYear(@RequestParam(name = "year") int year) { 
		 ModelAndView mav = new ModelAndView("list-movie"); 
		 String greetings = "Find : " +year;
		 mav.addObject("message", greetings); 
		 mav.addObject("list_movies", mapper.getMoviesYear(year)); 
		 List<Country> countries = countryMapper.countriesActive();		
	     List<Genre> genres = genreMapper.getAllGenres();		
	     mav.addObject("countries", countries);
	     mav.addObject("genres", genres);
		 return mav; 
	 }
	// NAVBAR category
    @RequestMapping("/category")
    public String fkCategory(@RequestParam(name = "categoryId") int categoryId,  Model model) {
       List<Movie> list_movies = mapper.getMoviesByCategoryId(categoryId);
       model.addAttribute("list_movies", list_movies);
       String greetings = "Find out : " + genreMapper.getGenreName(categoryId).getGenre_name();
       model.addAttribute("message", greetings);
    // NAV BAR DROPDOWN
       List<Country> countries = countryMapper.countriesActive();		
       List<Genre> genres = genreMapper.getAllGenres();		
       model.addAttribute("countries", countries);
       model.addAttribute("genres", genres);
       return "list-movie";
    }
 // NAVBAR country
    @RequestMapping("/country")
    public String fkCountry(@RequestParam(name = "countryId") int countryId,  Model model) {
       List<Movie> list_movies = mapper.getMoviesByCountryId(countryId);
       model.addAttribute("list_movies", list_movies);
       String greetings = "Find out :" +list_movies.size();
       model.addAttribute("message", greetings);
    // NAV BAR DROPDOWN
       List<Country> countries = countryMapper.countriesActive();		
		List<Genre> genres = genreMapper.getAllGenres();		
		model.addAttribute("countries", countries);
		model.addAttribute("genres", genres);
   return "list-movie";
    }
    // End Section 4 Keyword
    @RequestMapping("/keyword")
    public String moviesFkKeyword(@RequestParam(name = "keywordId") int keywordId,  Model model) {
       List<Movie> list_movies = mapper.getMoviesByKeywordId(keywordId);
       model.addAttribute("list_movies", list_movies);
       String greetings = "Find out :"+ keywordId;
       model.addAttribute("message", greetings);
    // NAV BAR DROPDOWN
//    		List<Country> countries = countryMapper.countriesActive();		
//    		List<Genre> genres = genreMapper.getAllGenres();		
//    		model.addAttribute("countries", countries);
//    		model.addAttribute("genres", genres);
       return "list-movie";
    }
    //  NAVBAR search Name 
    @RequestMapping("/searchMovies")
	public String search(@RequestParam String name , Model model) {
		if(name=="" || name==null) {					
			 return "redirect:/";
		}
		 List<Movie> list_movies = mapper.getMoviesName("%"+name+"%");
		String greetings = "Find : " +name +list_movies.size(); 		 
		model.addAttribute("message", greetings);	
		model.addAttribute("list_movies", list_movies);	
		return "list-movie";
	}
    
    // FORMAT DATE
    public String yearFormatByDate(Date open_date) {
//		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd-MM-yyyy");	
    	int year = open_date.getYear() + 1900;
        String date = String.valueOf(year);                
        return date;
	}
}