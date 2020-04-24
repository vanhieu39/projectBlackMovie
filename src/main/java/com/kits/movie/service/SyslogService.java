package com.kits.movie.service;

import java.sql.Date;
import java.sql.Time;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.kits.movie.entity.Actor;
import com.kits.movie.entity.Directors;
import com.kits.movie.entity.Systemlog;
import com.kits.movie.entity.User;

@Service
public class SyslogService {

	//mav.addObject("userId", request.getSession().setAttribute("userId", u.getId_user()));
	
	Systemlog loginf = new Systemlog();
	String action = "";
	String table = "";
	int id=1;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getCurrenDate() {
		long timeget = System.currentTimeMillis();
		java.sql.Date datesql = new java.sql.Date(timeget);
		return datesql;
	}

	public Time getCurrenTime() {
		long timeget = System.currentTimeMillis();
		java.sql.Time tm = new java.sql.Time(timeget);
		return tm;
	}
	public Systemlog logInsertUser(User user) {
		StringBuilder sqlcmd = new StringBuilder();
		sqlcmd.append("INSERT INTO user (username, password, role, fullname, email, phone, gender, birthday, images) ");
		sqlcmd.append("VALUES(");
		sqlcmd.append("'"+user.getUsername()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+user.getPassword()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+user.getRole()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+user.getFullname()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+user.getEmail()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+user.getPhone()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+user.getGender()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+user.getBirthday()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+user.getImages()+"'");
		sqlcmd.append(");");
		action = "insert";
		table = "user";
		loginf = new Systemlog();
		this.setLogData(sqlcmd.toString());
		return loginf;	
	}
	public Systemlog logUpdateUser(User user) {
		StringBuilder sqlcmd = new StringBuilder();
		sqlcmd.append("update user set username = ");
		sqlcmd.append("'"+user.getUsername()+"'");
		sqlcmd.append(",");
		sqlcmd.append("password = ");
		sqlcmd.append("'"+user.getPassword()+"'");
		sqlcmd.append(",");
		sqlcmd.append("role = ");
		sqlcmd.append("'"+user.getRole()+"'");
		sqlcmd.append(",");
		sqlcmd.append("fullname = ");
		sqlcmd.append("'"+user.getFullname()+"'");
		sqlcmd.append(",");
		sqlcmd.append("email = ");
		sqlcmd.append("'"+user.getEmail()+"'");
		sqlcmd.append(",");
		sqlcmd.append("phone = ");
		sqlcmd.append("'"+user.getPhone()+"'");
		sqlcmd.append(",");
		sqlcmd.append("gender = ");
		sqlcmd.append("'"+user.getGender()+"'");
		sqlcmd.append(",");
		sqlcmd.append("birthday = ");
		sqlcmd.append("'"+user.getBirthday()+"'");
		sqlcmd.append(",");
		sqlcmd.append("images = ");
		sqlcmd.append("'"+user.getImages()+"'");
		sqlcmd.append(" where id_user = ");
		sqlcmd.append("'"+user.getId_user()+"'");
		sqlcmd.append(";");
		action = "update";
		table = "user";
		loginf = new Systemlog();
		this.setLogData(sqlcmd.toString());
		return loginf;
	}
	public Systemlog logDeleteUser(int userId) {
		StringBuilder sqlcmd = new StringBuilder();
		sqlcmd.append("delete from user where id_user = ");
		sqlcmd.append("'"+userId+"'");
		sqlcmd.append(";");
		action = "delete";
		table = "user";
		loginf = new Systemlog();
		this.setLogData(sqlcmd.toString());
		return loginf;
	}
	private void setLogData(String sqlcmd) {
		loginf.setId_user(id);
		loginf.setAction(action);
		loginf.setExecute_table(table);
		loginf.setSqlcomment(sqlcmd);
		loginf.setExecute_time(this.getCurrenTime());
		loginf.setExecute_date(this.getCurrenDate());
	}
	public Systemlog logInsertActor(Actor actor) {
		StringBuilder sqlcmd = new StringBuilder();
		sqlcmd.append("INSERT INTO actor (fullname, gender, birthday, nation, images, view) ");
		sqlcmd.append("VALUES(");
		sqlcmd.append("'"+actor.getFullname()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+actor.getGender()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+actor.getBirthday()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+actor.getNation()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+actor.getImages()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+actor.getView()+"'");
		sqlcmd.append(");");
		action = "insert";
		table = "actor";
		loginf = new Systemlog();
		this.setLogData(sqlcmd.toString());
		return loginf;
	}
	public Systemlog logUpdateActor(Actor actor) {
		StringBuilder sqlcmd = new StringBuilder();
		sqlcmd.append("UPDATE actor SET fullname = ");
		sqlcmd.append("'"+actor.getFullname()+"'");
		sqlcmd.append(",");
		sqlcmd.append("gender = ");
		sqlcmd.append("'"+actor.getGender()+"'");
		sqlcmd.append(",");
		sqlcmd.append("birthday = ");
		sqlcmd.append("'"+actor.getBirthday()+"'");
		sqlcmd.append(",");
		sqlcmd.append("nation = ");
		sqlcmd.append("'"+actor.getNation()+"'");
		sqlcmd.append(",");
		sqlcmd.append("images = ");
		sqlcmd.append("'"+actor.getImages()+"'");
		sqlcmd.append(",");
		sqlcmd.append("view = ");
		sqlcmd.append("'"+actor.getView()+"'");
		sqlcmd.append(" WHERE  id_actor = ");
		sqlcmd.append("'"+actor.getId_actor()+"'");
		sqlcmd.append(";");
		action = "update";
		table = "actor";
		loginf = new Systemlog();
		this.setLogData(sqlcmd.toString());
		return loginf;
	}
	public Systemlog logDeleteActor(int actorID) {
		StringBuilder sqlcmd = new StringBuilder();
		sqlcmd.append("delete from actor where id_actor = ");
		sqlcmd.append("'"+actorID+"'");
		sqlcmd.append(";");
		action = "delete";
		table = "actor";
		loginf = new Systemlog();
		this.setLogData(sqlcmd.toString());
		return loginf;
	}
	public Systemlog logInsertDirector(Directors directors) {
		StringBuilder sqlcmd = new StringBuilder();
		sqlcmd.append("INSERT INTO directors (fullname, gender, birthday, nation, images, view) ");
		sqlcmd.append("VALUES(");
		sqlcmd.append("'"+directors.getFullname()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+directors.getGender()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+directors.getBirthday()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+directors.getNation()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+directors.getImages()+"'");
		sqlcmd.append(",");
		sqlcmd.append("'"+directors.getView()+"'");
		sqlcmd.append(");");
		action = "insert";
		table = "directors";
		loginf = new Systemlog();
		this.setLogData(sqlcmd.toString());
		return loginf;
	}
	public Systemlog logUpdateDirector(Directors directors) {
		StringBuilder sqlcmd = new StringBuilder();
		sqlcmd.append("UPDATE directors SET fullname = ");
		sqlcmd.append("'"+directors.getFullname()+"'");
		sqlcmd.append(",");
		sqlcmd.append("gender = ");
		sqlcmd.append("'"+directors.getGender()+"'");
		sqlcmd.append(",");
		sqlcmd.append("birthday = ");
		sqlcmd.append("'"+directors.getBirthday()+"'");
		sqlcmd.append(",");
		sqlcmd.append("nation = ");
		sqlcmd.append("'"+directors.getNation()+"'");
		sqlcmd.append(",");
		sqlcmd.append("images = ");
		sqlcmd.append("'"+directors.getImages()+"'");
		sqlcmd.append(",");
		sqlcmd.append("view = ");
		sqlcmd.append("'"+directors.getView()+"'");
		sqlcmd.append(" WHERE  id = ");
		sqlcmd.append("'"+directors.getId()+"'");
		sqlcmd.append(";");
		action = "update";
		table = "directors";
		loginf = new Systemlog();
		this.setLogData(sqlcmd.toString());
		return loginf;
	}
	public Systemlog logDeleteDirector(int id) {
		StringBuilder sqlcmd = new StringBuilder();
		sqlcmd.append("delete from directors where id = ");
		sqlcmd.append("'"+id+"'");
		sqlcmd.append(";");
		action = "delete";
		table = "directors";
		loginf = new Systemlog();
		this.setLogData(sqlcmd.toString());
		return loginf;
	}

}
