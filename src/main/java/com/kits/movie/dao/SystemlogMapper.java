package com.kits.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.Systemlog;
import com.kits.movie.entity.User;
import com.kits.movie.util.MyBatisUtil;

@Repository
public class SystemlogMapper {

	public List<Systemlog> getAllLogPage(int start){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Systemlog> logList = session.selectList("getAllLogPage",start);
		session.commit();
		session.close();
		return logList;		
	}
	public List<Systemlog> getAllLog(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Systemlog> logList = session.selectList("getAllLog");
		session.commit();
		session.close();
		return logList;	
	}
	public void saveLog(Systemlog log) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertLog", log);
		session.commit();
		session.close();
	}
	public void deleteLog(int id_log) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteLog", id_log);
		session.commit();
		session.close();
	}
	
	public void deleteAllLog() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteAllLog");
		session.commit();
		session.close();
	}
	public void hideAllLog() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.update("hideAllLog");
		session.commit();
		session.close();
	}
//	Count All Movie Hải Code
	public Integer countLog(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Integer count = (Integer) session.selectOne("countLog");
		session.commit();
		session.close();
		return count;
	}
//	thống kê top 3 user hoạt động nhiều nhất
	public List<Integer> getTop3ActivityTotal(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Integer> totallist = session.selectList("getTop3ActivityTotal");
		session.commit();
		session.close();
		return totallist;	
	}
}
