package com.kits.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.Movie;
import com.kits.movie.util.MyBatisUtil;

@Repository @SuppressWarnings("unchecked")	
public class MovieMapper {
	
	// <!-- Movies Suggests 4 -->
	public List<Movie> getMoviesSuggest4(int fkCategory) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Movie> listmovies = session.selectList("getMoviesSuggest4", fkCategory);
		session.commit();
		session.close();
		return listmovies;
	}
	
	// Count All Series
	public List<Movie> getCountSeries() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Movie> listmovies = session.selectList("getCountSeries");
		session.commit();
		session.close();
		return listmovies;
	}
	// <!-- Movies All All Admin Manager-->
	public List<Movie> getMoviesAdminAll() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Movie> listmovies = session.selectList("getMoviesAdminAll");
		session.commit();
		session.close();
		return listmovies;
	}
	
	//<!-- Movies Series Admin Manager-->
	public List<Movie> getMoviesAdminSeries() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Movie> listmovies = session.selectList("getMoviesAdminSeries");
		session.commit();
		session.close();
		return listmovies;
	}	
	// <!-- Movies Short Admin Manager-->
	public List<Movie> getMoviesAdminShort(int start) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Movie> listmovies = session.selectList("getMoviesAdminShort", start);
		session.commit();
		session.close();
		return listmovies;
	}
	// <!-- Movies Short Admin Manager CountSize-->
		public List<Movie> getMoviesAdminShortCountSize() {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> listmovies = session.selectList("getMoviesAdminShortCountSize");
			session.commit();
			session.close();
			return listmovies;
		}
		
	// <!-- Paginated All Cinemax 20 Size -->
			public List<Movie> getMoviesCinemax(int start) {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesCinemax", start);
			session.commit();
			session.close();
			return movies;		
	}
	// <!-- Paginated All Short New 20 Size -->
				public List<Movie> getMoviesNewShort(int start) {
				SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
				List<Movie> movies = session.selectList("getMoviesNewShort", start);
				session.commit();
				session.close();
				return movies;		
			}
				
	// <!-- Paginated All Series Full 20 Size -->
			public List<Movie> getMoviesNewSeriesFull(int start) {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesNewSeriesFull", start);
			session.commit();
			session.close();
			return movies;		
		}	
		
	// <!-- Paginated All NewSeries Last Expisode 20 Size -->
			public List<Movie> getMoviesLastExpSeries(int start) {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesLastExpSeries", start);
			session.commit();
			session.close();
			return movies;		
		}	
	
	// <!-- Paginated All 20 Size -->
		public List<Movie> getMoviesAll(int start){		
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesAll", start);
			session.commit();
			session.close();
			return movies;		
		}
	
	// SlideShow 8 Short Movie-->
		public List<Movie> getMoviesSlideShow8() {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesSlideShow8");
			session.commit();
			session.close();
			return movies;		
		}
	// Section 1 ======= 8 cinemax Short Movie 
		public List<Movie> getMoviesShort8() {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesShort8");
			session.commit();
			session.close();
			return movies;		
		}
	// <!-- Section 1 TRAILER 8-->		
		public List<Movie> getMoviesTrailer8() {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesTrailer8");
			session.commit();
			session.close();
			return movies;		
		}
		
	//	<!-- Section 2 Short 12-->		
		public List<Movie> getMoviesShort12() {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesShort12");
			session.commit();
			session.close();
			return movies;		
		}	
	//  <!-- Section 2 ViewTop SHORT 7-->
		public List<Movie> getMoviesViewShort7() {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesViewShort7");
			session.commit();
			session.close();
			return movies;		
		}	
	
	// Series ID multiple movie	Watch Movie	
	public List<Movie> getMoviesBySerialId(int serialId){		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Movie> movies = session.selectList("getMoviesBySerialId", serialId);
		session.commit();
		session.close();
		return movies;		
	}
	
	// <!-- Navbar Search Name-->
	public List<Movie> getMoviesName(String search){		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Movie> movies = session.selectList("getMoviesName",search);
		session.commit();
		session.close();
		return movies;		
	}
	
	// <!-- Navbar Dropdown Year-->	
	public List<Movie> getMoviesYear(int year){					
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Movie> movies = session.selectList("getMoviesYear",year);
		session.commit();
		session.close();
		return movies;		
	}
	//	<!-- Navbar Dropdown Country Series-->	
	public List<Movie> getMoviesByCountryId(int countryId){		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Movie> movies = session.selectList("getMoviesByCountryId", countryId);
		session.commit();
		session.close();
		return movies;		
	}
	//	<!-- Navbar Dropdown CategoryId-->	
		public List<Movie> getMoviesByCategoryId(int categoryId){		
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesfkCategory", categoryId);
			session.commit();
			session.close();
			return movies;		
	}			
	//	<!-- Navbar Dropdown KeywordId-->	
		public List<Movie> getMoviesByKeywordId(int keywordId){		
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			List<Movie> movies = session.selectList("getMoviesfkKeyword", keywordId);
			session.commit();
			session.close();
			return movies;		
	}	
	// CRUD ADMIN-->	
	public void saveMovie(Movie movie) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertMovie",movie);
		session.commit();
		session.close();	
	}	
	public void updateMovie(Movie movie){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.update("updateMovie", movie);
		session.commit();
		session.close();
	}	
	public void deleteMovie(int movieId){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteMovie", movieId);
		session.commit();
		session.close();
	}	
	public Movie findMovieById(int movieId){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Movie m = (Movie) session.selectOne("findMovieById", movieId);
		session.commit();
		session.close();
		return m;
	}
	//  END CRUD ADMIN-->
	
//	Count All Movie Hải Code
	public Integer countMovie(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Integer count = (Integer) session.selectOne("countMovie");
		session.commit();
		session.close();
		return count;
	}
}
