package com.kits.movie.entity;

import java.util.Date;

public class Serial {
	private Integer id;
	private String name; 
	private Integer totals_movie;
	private String status_series;
	private Integer fk_movieid;
	private String created_at;
	
	private Movie dto_movie;
	
	private Integer id_film;
	private String name_film , status;
	private Date open_date;
	private Integer time;
	private String quality;
	private Integer num_view;
	private String description, image, link_film;	
	private boolean new_film = false;
	
	public Serial(Integer id, String name, Integer totals_movie, String status_series, Integer fk_movieid,
			String created_at) {
		this.id = id;
		this.name = name;
		this.totals_movie = totals_movie;
		this.status_series = status_series;
		this.fk_movieid = fk_movieid;
		this.created_at = created_at;
	}
	public Serial() {
		
	}

	
	public String getStatus_series() {
		return status_series;
	}
	public void setStatus_series(String status_series) {
		this.status_series = status_series;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTotals_movie() {
		return totals_movie;
	}
	public void setTotals_movie(Integer totals_movie) {
		this.totals_movie = totals_movie;
	}
	public Integer getFk_movieid() {
		return fk_movieid;
	}
	public void setFk_movieid(Integer fk_movieid) {
		this.fk_movieid = fk_movieid;
	}
	public Integer getId_film() {
		return id_film;
	}
	public void setId_film(Integer id_film) {
		this.id_film = id_film;
	}
	public String getName_film() {
		return name_film;
	}
	public void setName_film(String name_film) {
		this.name_film = name_film;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getOpen_date() {
		return open_date;
	}
	public void setOpen_date(Date open_date) {
		this.open_date = open_date;
	}
	public Integer getTime() {
		return time;
	}
	public void setTime(Integer time) {
		this.time = time;
	}
	public String getQuality() {
		return quality;
	}
	public void setQuality(String quality) {
		this.quality = quality;
	}
	public Integer getNum_view() {
		return num_view;
	}
	public void setNum_view(Integer num_view) {
		this.num_view = num_view;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getLink_film() {
		return link_film;
	}
	public void setLink_film(String link_film) {
		this.link_film = link_film;
	}
	public boolean isNew_film() {
		return new_film;
	}
	public void setNew_film(boolean new_film) {
		this.new_film = new_film;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public Movie getDto_movie() {
		return dto_movie;
	}
	public void setDto_movie(Movie dto_movie) {
		this.dto_movie = dto_movie;
	}
	
}