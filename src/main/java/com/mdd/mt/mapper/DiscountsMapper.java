package com.mdd.mt.mapper;

import java.util.List;

import com.mdd.mt.model.Discounts;

public interface DiscountsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Discounts record);

    int insertSelective(Discounts record);

    Discounts selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Discounts record);

    int updateByPrimaryKey(Discounts record);
    
    Discounts getDiscountByTitle(String title);

	List<Discounts> loadLastWeekDisCount();
	
	int getDiscountCrawler();
}