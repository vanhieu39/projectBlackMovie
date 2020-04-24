package com.kits.movie.entity;


import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Movie {
	private Integer id_film;
	private String name_film , status;
	private String list_author;
	private String list_actor;	
	private String nation;
	private java.sql.Date open_date;
	private Integer time;
	private String quality;
	private Integer num_view;
	private String description;
	private String keyword;
	private String image , link_film ,link_trailer;
	private String category;	
	private String image_detail1, image_detail2;
	private boolean new_film = false;
	private boolean is_series = false;
	private MultipartFile multipartFile;
	public MultipartFile getMultipartFile() {
		return multipartFile;
	}
	public void setMultipartFile(MultipartFile multipartFile) {
		this.multipartFile = multipartFile;
	}	
	public Movie() {
		super();
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
	
	public String getList_author() {
		return list_author;
	}

	public void setList_author(String list_author) {
		this.list_author = list_author;
	}

	public String getList_actor() {
		return list_actor;
	}

	public void setList_actor(String list_actor) {
		this.list_actor = list_actor;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getCategory() {
		return category;
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
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
	public String getLink_trailer() {
		return link_trailer;
	}
	public void setLink_trailer(String link_trailer) {
		this.link_trailer = link_trailer;
	}
	public String getImage_detail1() {
		return image_detail1;
	}
	public void setImage_detail1(String image_detail1) {
		this.image_detail1 = image_detail1;
	}
	public String getImage_detail2() {
		return image_detail2;
	}
	public void setImage_detail2(String image_detail2) {
		this.image_detail2 = image_detail2;
	}
	public boolean isNew_film() {
		return new_film;
	}
	public void setNew_film(boolean new_film) {
		this.new_film = new_film;
	}
	public boolean isIs_series() {
		return is_series;
	}
	public void setIs_series(boolean is_series) {
		this.is_series = is_series;
	}
}
