package com.kits.movie.entity;

public class Comment {
	private Integer id_comment;
	private Integer id_film;
	private Integer id_user;
	private String content;
	private String date_comment;
	public Integer getId_comment() {
		return id_comment;
	}
	public void setId_comment(Integer id_comment) {
		this.id_comment = id_comment;
	}
	public Integer getId_film() {
		return id_film;
	}
	public void setId_film(Integer id_film) {
		this.id_film = id_film;
	}
	public Integer getId_user() {
		return id_user;
	}
	public void setId_user(Integer id_user) {
		this.id_user = id_user;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate_comment() {
		return date_comment;
	}
	public void setDate_comment(String date_comment) {
		this.date_comment = date_comment;
	}
	@Override
	public String toString() {
		return "Comment [id_comment=" + id_comment + ", id_film=" + id_film + ", id_user=" + id_user + ", content="
				+ content + ", date_comment=" + date_comment + "]";
	}
	
	
}
