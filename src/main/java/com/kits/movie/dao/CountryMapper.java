package com.kits.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.Country;
import com.kits.movie.util.MyBatisUtil;

@Repository
public class CountryMapper {
	
	public List<Country> getAllcountries() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Country> countries = session.selectList("getAllcountries");
		session.commit();
		session.close();
		return countries;		
	}
	
	public List<Country> getAllcountriesPage(int start) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();		
		List<Country> countries = session.selectList("getAllcountriesPage",start);
		session.commit();
		session.close();
		return countries;		
	}
	
	public List<Country> countriesActive() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Country> countries = session.selectList("countriesActive");
		session.commit();
		session.close();
		return countries;		
	}
	
	public List<Country> getCountryByMovieId(int movieId) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Country> countries = session.selectList("getCountryByMovieId", movieId);
		session.commit();
		session.close();
		return countries;		
	}
	
}
