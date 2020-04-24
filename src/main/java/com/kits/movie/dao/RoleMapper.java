package com.kits.movie.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kits.movie.entity.Role;
import com.kits.movie.util.MyBatisUtil;

@Repository
public class RoleMapper {
	public Role findByName(String name) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Role role = (Role) session.selectOne("findByName",name);
		session.commit();
		session.close();
		return role;
	}
}
