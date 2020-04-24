package com.kits.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.User;
import com.kits.movie.util.MyBatisUtil;

@Repository
public class UserMapper {
	public List<User> getAllUserPage(int start){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<User> userList = session.selectList("getAllUserPage",start);
		session.commit();
		session.close();
		return userList;	
	}
	public List<User> getAllUser(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<User> userList = session.selectList("getAllUser");
		session.commit();
		session.close();
		return userList;	
	}
	public void saveUser(User user) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertUser", user);
		session.commit();
		session.close();
		
	}
	public void deleteUser(int userId) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteUser", userId);
		session.commit();
		session.close();
	}
	public User findById(int userId) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		User user = (User) session.selectOne("com.kits.movie.dao.UserMapper.findById", userId);
		session.commit();
		session.close();
		return user;
		
	}
	public User findByEmail(String email) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		User user = (User) session.selectOne("findByEmail", email);
		session.commit();
		session.close();
		return user;
		
	}
	public void updateUser(User user) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("updateUser", user);
		session.commit();
		session.close();
		
	}

//	thống kê top 3 user hoạt động nhiều nhất
	public List<User> getTop3Activity(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<User> userList = session.selectList("getTop3Activity");
		session.commit();
		session.close();
		return userList;	
	}

	public User read(String username) throws Exception{
		User user = null;
		try {
			SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
			user = (User) session.selectOne("findByUsername", username);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return user;
	}
	
}
