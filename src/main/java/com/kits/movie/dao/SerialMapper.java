package com.kits.movie.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.controller.admin.iCRUDadmin;
import com.kits.movie.entity.Serial;
import com.kits.movie.util.MyBatisUtil;


@Repository 
public class SerialMapper implements iCRUDadmin<Serial>{
	
	// Page Admin 10
		public List<Serial> getManagerPageSeries(int start){
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();		
			List<Serial> list_series = session.selectList("getManagerPageSeries",start);
			session.commit();
			session.close();
			return list_series;	
		}
	// 12 item
	public List<Serial> getAllSeriesNew12(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();		
		List<Serial> list_series = session.selectList("getAllSeriesNew");
		session.commit();
		session.close();
		return list_series;	
	}
	
	// 7 series
	public List<Serial> getSeriesView7(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Serial> list_series = session.selectList("getSeriesView7");
		session.commit();
		session.close();
		return list_series;	
	}
	
	public void updateSerial(Serial serial){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.update("updateSerial", serial);
		session.commit();
		session.close();
	}

	@Override
	public int getRows(List<Serial> list) {
		return list.size();
	}

	@Override
	public List<Serial> findAllPaginate(int page) {
		int start = page * 20 - 20;	
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();		
		List<Serial> list_series = session.selectList("getAllSeriesPagination",start);
		session.commit();
		session.close();
		return list_series;	
	}

	@Override
	public List<Serial> findAll() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();	
		List<Serial> list_series = session.selectList("getAllSeries");
		session.commit();
		session.close();
		return list_series;	
	}

	@Override
	public Serial findT(int id) {
		int seriesId = id;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Serial s = (Serial) session.selectOne("findSerialById", seriesId);
		session.commit();
		session.close();
		return s;
	}

	@Override
	public void insert(Serial serial) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertSerial", serial);
		session.commit();
		session.close();		
	}

	@Override
	public void del(int id) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteSerial", id);
		session.commit();
		session.close();
	}
}
