package com.kits.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.Keyword;
import com.kits.movie.entity.Movie;
import com.kits.movie.util.MyBatisUtil;

@Repository
public class KeywordMapper {
	
	public List<Keyword> getAllKeywords(){		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Keyword> keywords = session.selectList("getKeywords");
		session.commit();
		session.close();
		return keywords;
	}
	
//	public List<Movie> getKeywordMovies(){		
//		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
//		List<Movie> key_movies = session.selectList("getKeywordMovies");
//		session.commit();
//		session.close();
//		return key_movies;
//	}
}
