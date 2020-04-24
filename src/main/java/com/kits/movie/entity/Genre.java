package com.kits.movie.entity;

public class Genre {
	private Integer genre_id;
	private String genre_name;
	private boolean is_active = false;
	public Genre() {		
	}
	
	public Genre(String genre_name, boolean is_active) {
		this.genre_name = genre_name;
		this.is_active = is_active;
	}

	@Override
	public String toString() {
		return "Genre [genre_id=" + genre_id + ", genre_name=" + genre_name + ", is_active=" + is_active + "]";
	}
	public Integer getGenre_id() {
		return genre_id;
	}
	public void setGenre_id(Integer genre_id) {
		this.genre_id = genre_id;
	}
	public String getGenre_name() {
		return genre_name;
	}
	public void setGenre_name(String genre_name) {
		this.genre_name = genre_name;
	}
	public boolean isIs_active() {
		return is_active;
	}
	public void setIs_active(boolean is_active) {
		this.is_active = is_active;
	}	
}
