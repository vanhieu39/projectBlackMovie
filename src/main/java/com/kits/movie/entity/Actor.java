package com.kits.movie.entity;

import org.springframework.web.multipart.MultipartFile;

public class Actor {
	private Integer id_actor;
	private String fullname;
	private Integer gender;
	private String birthday;
	private String nation;
	private String images;
	private Integer view;
	private MultipartFile multipartFile;
	public MultipartFile getMultipartFile() {
		return multipartFile;
	}
	public void setMultipartFile(MultipartFile multipartFile) {
		this.multipartFile = multipartFile;
	}
	public Integer getId_actor() {
		return id_actor;
	}
	public void setId_actor(Integer id_actor) {
		this.id_actor = id_actor;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public Integer getView() {
		return view;
	}
	public void setView(Integer view) {
		this.view = view;
	}
	@Override
	public String toString() {
		return "Actor [id_actor=" + id_actor + ", fullname=" + fullname + ", gender=" + gender + ", birthday="
				+ birthday + ", nation=" + nation + ", images=" + images + ", view=" + view + "]";
	}
}
