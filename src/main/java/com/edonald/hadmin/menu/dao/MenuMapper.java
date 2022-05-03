package com.edonald.hadmin.menu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface MenuMapper {
	public List<String> getBlockMenuList(int store_code);
}
