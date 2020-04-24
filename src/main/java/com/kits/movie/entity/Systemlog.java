package com.kits.movie.entity;

import org.springframework.stereotype.Component;

@Component
public class Systemlog {
	private Integer id_log;
	private Integer id_user;
	private String action;
	private String execute_table;
	private String sqlcomment;
	private java.sql.Time execute_time;
	private java.sql.Date execute_date;
	private String username;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getId_log() {
		return id_log;
	}
	public void setId_log(Integer id_log) {
		this.id_log = id_log;
	}
	public Integer getId_user() {
		return id_user;
	}
	public void setId_user(Integer id_user) {
		this.id_user = id_user;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	
	public String getExecute_table() {
		return execute_table;
	}
	public void setExecute_table(String execute_table) {
		this.execute_table = execute_table;
	}
	public String getSqlcomment() {
		return sqlcomment;
	}
	public void setSqlcomment(String sqlcomment) {
		this.sqlcomment = sqlcomment;
	}
	public java.sql.Time getExecute_time() {
		return execute_time;
	}
	public void setExecute_time(java.sql.Time execute_time) {
		this.execute_time = execute_time;
	}
	public java.sql.Date getExecute_date() {
		return execute_date;
	}
	public void setExecute_date(java.sql.Date execute_date) {
		this.execute_date = execute_date;
	}
	
}
