package com.kits.movie.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.multipart.MultipartFile;

public class User implements UserDetails{
	private Integer id_user;
	private Integer fb_id;
	private String username;
	private String password;
	private Integer role;
	private String fullname;
	private String email;
	private String phone;
	private Integer gender;
	private String birthday;
	private String date_register;
	private Integer is_enable;
	private String updatedate;
	private String images;
	private MultipartFile multipartFile;
	
	
	
	public User() {
	}
	public User(Integer id_user, Integer fb_id, String username, String password, Integer role, String fullname,
			String email, String phone, Integer gender, String birthday, String date_register, Integer is_enable,
			String updatedate, String images, MultipartFile multipartFile) {
		super();
		this.id_user = id_user;
		this.fb_id = fb_id;
		this.username = username;
		this.password = password;
		this.role = role;
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.birthday = birthday;
		this.date_register = date_register;
		this.is_enable = is_enable;
		this.updatedate = updatedate;
		this.images = images;
		this.multipartFile = multipartFile;
	}
	
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		List <GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority("USER"));
		if(username != null && username.equals("admin")) {
			authorities.add(new SimpleGrantedAuthority("USER_MANAGER"));
		}
		return authorities;
	}
	
	
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return username;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
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
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getDate_register() {
		return date_register;
	}
	public void setDate_register(String date_register) {
		this.date_register = date_register;
	}
	public Integer getIs_enable() {
		return is_enable;
	}
	public void setIs_enable(Integer is_enable) {
		this.is_enable = is_enable;
	}
	public String getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public MultipartFile getMultipartFile() {
		return multipartFile;
	}
	public void setMultipartFile(MultipartFile multipartFile) {
		this.multipartFile = multipartFile;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [id_user=" + id_user + ", fb_id=" + fb_id + ", username=" + username + ", password=" + password
				+ ", role=" + role + ", fullname=" + fullname + ", email=" + email + ", phone=" + phone + ", gender="
				+ gender + ", birthday=" + birthday + ", date_register=" + date_register + ", is_enable=" + is_enable
				+ ", updatedate=" + updatedate + ", images=" + images + ", multipartFile=" + multipartFile + "]";
	}
	
	
	
	
}
