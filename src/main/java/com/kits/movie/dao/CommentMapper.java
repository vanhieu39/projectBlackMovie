package com.kits.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kits.movie.entity.Comment;
import com.kits.movie.util.MyBatisUtil;

public class CommentMapper {
	public List<Comment> getAllComment(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<Comment> commentList = session.selectList("getAllComment");
		session.commit();
		session.close();
		return commentList;
	}

}
