package com.kits.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.Actor;
import com.kits.movie.entity.Directors;
import com.kits.movie.util.MyBatisUtil;
@Repository
public class DirectorsMapper {
	public List<Actor> getAllDirectorsPage(int start){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Actor> actorList = session.selectList("getAllDirectorsPage",start);
		session.commit();
		session.close();
		return actorList;		
	}
	public List<Directors> getAllDirectors(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Directors> directorList = session.selectList("getAllDirectors");
		session.commit();
		session.close();
		return directorList;
	}
	public void saveDirector(Directors director) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertDirector", director);
		session.commit();
		session.close();
	}
	public void updateDirector(Directors director) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.update("updateDirectors", director);
		session.commit();
		session.close();
	}
	public Directors findDirectorById(int id) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Directors director = (Directors) session.selectOne("findDirectorById", id);
		session.commit();
		session.close();
		return director;
	}
	public void deleteDirector(int id) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteDirector", id);
		session.commit();
		session.close();
	}
//	Count All Director Hải Code
	public Integer countDirectors(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Integer count = (Integer) session.selectOne("countDirectors");
		session.commit();
		session.close();
		return count;
	}
//	Count All Women Director Hải Code
	public Integer countWomenDirectors(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Integer count = (Integer) session.selectOne("countWomenDirectors");
		session.commit();
		session.close();
		return count;
	}
}
