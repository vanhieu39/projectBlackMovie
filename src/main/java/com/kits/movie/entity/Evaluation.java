package com.kits.movie.entity;

public class Evaluation {
	private Integer id_evaluation;
	private Integer id_film;
	private Float rate;
	private Integer sum_eveluation;
	public Integer getId_eveluation() {
		return id_evaluation;
	}
	public void setId_eveluation(Integer id_evaluation) {
		this.id_evaluation = id_evaluation;
	}
	public Integer getId_film() {
		return id_film;
	}
	public void setId_film(Integer id_film) {
		this.id_film = id_film;
	}
	public Float getRate() {
		return rate;
	}
	public void setRate(Float rate) {
		this.rate = rate;
	}
	public Integer getSum_eveluation() {
		return sum_eveluation;
	}
	public void setSum_eveluation(Integer sum_eveluation) {
		this.sum_eveluation = sum_eveluation;
	}
	@Override
	public String toString() {
		return "Evaluation [id_evaluation=" + id_evaluation + ", id_film=" + id_film + ", rate=" + rate
				+ ", sum_eveluation=" + sum_eveluation + "]";
	}
	
	
}
