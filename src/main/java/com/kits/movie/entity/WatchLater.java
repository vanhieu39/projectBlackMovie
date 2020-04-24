package com.kits.movie.entity;

public class WatchLater {
	private Integer id_watchlater;
	private Integer id_film;
	private Integer id_user;
	private Integer fb_id;
	private String date_save;
	public Integer getId_watchlater() {
		return id_watchlater;
	}
	public void setId_watchlater(Integer id_watchlater) {
		this.id_watchlater = id_watchlater;
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
	public Integer getFb_id() {
		return fb_id;
	}
	public void setFb_id(Integer fb_id) {
		this.fb_id = fb_id;
	}
	public String getDate_save() {
		return date_save;
	}
	public void setDate_save(String date_save) {
		this.date_save = date_save;
	}
	@Override
	public String toString() {
		return "WatchLater [id_watchlater=" + id_watchlater + ", id_film=" + id_film + ", id_user=" + id_user
				+ ", fb_id=" + fb_id + ", date_save=" + date_save + "]";
	}
	
	

}
