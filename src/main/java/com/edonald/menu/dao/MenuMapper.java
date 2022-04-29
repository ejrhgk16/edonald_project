package com.edonald.menu.dao;

import org.springframework.stereotype.Repository;

import com.edonald.menu.dto.BurgerDto;
import com.edonald.menu.dto.BurgerSetDto;
import com.edonald.menu.dto.DessertDto;
import com.edonald.menu.dto.DrinkDto;
import com.edonald.menu.dto.EmorningDto;
import com.edonald.menu.dto.HappymealDto;
import com.edonald.menu.dto.SideDto;
/*
 * 안씀 각각의 mapper로 나누어야할필요가 있음
 * but 참고용으로 일단 남겨둠 나중에 삭제 요망
 */
@Repository
public interface MenuMapper {
	public BurgerDto getBurgerInfo(int burger_code);
	public BurgerSetDto getBurgerSetInfo(int burger_set_code);
	public DessertDto getDessertInfo(int dessert_code);
	public DrinkDto getDrinkInfo(int drink_code);
	public EmorningDto getEmorningInfo(int emorning_code);
	public HappymealDto getHappymealInfo(int happymeal_code);
	public SideDto getSideInfo(int side_code);
}
