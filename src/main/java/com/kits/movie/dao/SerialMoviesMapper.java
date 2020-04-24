package com.kits.movie.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.Serial;
import com.kits.movie.util.MyBatisUtil;


@Repository 
public class SerialMoviesMapper {
	
	// Page Admin 10
//		public List<Serial> getManagerPageSeries(int start){
//			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();		
//			List<Serial> list_series = session.selectList("getManagerPageSeries",start);
//			session.commit();
//			session.close();
//			return list_series;	
//		}
	
	public List<Serial> getManagerAll(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();		
		List<Serial> list_series = session.selectList("joinall");
		session.commit();
		session.close();
		return list_series;	
	}
	
}
