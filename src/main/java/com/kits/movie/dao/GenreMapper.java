package com.kits.movie.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.Genre;
import com.kits.movie.util.MyBatisUtil;

@Repository
public class GenreMapper {

	public List<Genre> getAllGenres(){ 
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); 
		List<Genre> genres = session.selectList("getAllGenres"); 
		session.commit(); session.close(); 
		return genres; 
	}
	
	public List<Genre> getGenresByMovieId(int movieId){ 
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); 
		List<Genre> genres = session.selectList("getGenresByMovieId",movieId); 
		session.commit(); session.close(); 
		return genres; 
	}
	
	public Genre getGenreName(int categoryId){ 
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); 
		Genre genre = (Genre)session.selectOne("getGenreById",categoryId); 
		session.commit(); session.close(); 
		return genre; 
	}
	
	public void saveGenre(Genre genre) { 
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertGenre",genre); session.commit(); session.close();	
	}
	
	public void updateGenre(Genre genre){ 
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.update("updateGenre", genre); session.commit(); 
		session.close(); 
	}
	
	public void deleteGenre(int genreId){ 
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteGenre", genreId); 
		session.commit(); session.close(); 
	}
}
 