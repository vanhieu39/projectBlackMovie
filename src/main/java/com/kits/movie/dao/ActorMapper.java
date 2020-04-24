package com.kits.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.Actor;
import com.kits.movie.util.MyBatisUtil;
@Repository
public class ActorMapper {
	
	public List<Actor> getAllActorPage(int start){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Actor> actorList = session.selectList("getAllActorPage",start);
		session.commit();
		session.close();
		return actorList;		
	}
	public List<Actor> getAllActor(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Actor> actorList = session.selectList("getAllActor");
		session.commit();
		session.close();
		return actorList;		
	}
	
	public void saveActor(Actor actor) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertActor", actor);
		session.commit();
		session.close();
	}
	public void updateActor(Actor actor) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("updateActor", actor);
		session.commit();
		session.close();
	}
	public Actor findActorById(int actorID) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Actor actor = (Actor) session.selectOne("findActorById", actorID);
		session.commit();
		session.close();
		return actor;
	}
	public void deleteActor(int actorID) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteActor", actorID);
		session.commit();
		session.close();
	}
	//<!-- Actor show inside Movies -->
	public List<Actor> getActorByMovieId(int movieId) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Actor> actorList = session.selectList("getActorByMovieId", movieId);
		session.commit();
		session.close();
		return actorList;		
	}
//	Count All Actor Hải Code
	public Integer countActor(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Integer count = (Integer) session.selectOne("countActor");
		session.commit();
		session.close();
		return count;
	}
//	Count All Actor Hải Code
	public Integer countWomenActor(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Integer count = (Integer) session.selectOne("countWomenActor");
		session.commit();
		session.close();
		return count;
	}
	
}

