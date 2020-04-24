package com.kits.movie.controller;

import org.springframework.stereotype.Controller;

@Controller
public class KeywordController {
//	@Autowired
//	KeywordMapper keywordMapper;
//	
//	// <!-- Paginated All NewSeries Last Expisode 20 Size -->
//		@RequestMapping("/movies-lastseries")
//		public ModelAndView getKeywordMovies(@RequestParam(name = "page") int page) {
//			ModelAndView mav = new ModelAndView("list-movie");
//			List<Movie> list_movies = keywordMapper.getKeywordMovies();
//			mav.addObject("list_movies", list_movies);
//			String greetings = "All Movies Series Page :" + page;
//			int nOfPages = list_movies.size() / 20;
//	        if (nOfPages % 20 > 0) {
//	            nOfPages++;
//	        }
//			mav.addObject("message", greetings);
//			String link = "movies-lastseries";
//			mav.addObject("link", link);
//			mav.addObject("noOfPages", nOfPages);
//			mav.addObject("page", page);	
//			return mav;
//		}	
}
