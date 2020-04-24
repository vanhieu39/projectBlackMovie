package com.kits.movie.controller.admin;

import java.util.List;

public interface iCRUDadmin<T> {
	int getRows(List<T> list);
	List<T> findAllPaginate(int page);
	List<T> findAll();
	T findT(int id);
	void insert(T t);
	void del(int id);
}
