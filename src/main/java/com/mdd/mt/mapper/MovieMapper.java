package com.mdd.mt.mapper;

import com.mdd.mt.model.Movie;

import java.util.List;

public interface MovieMapper {
    int deleteByPrimaryKey(Integer id);

    int insertMovie(Movie movie);

    int insertSelective(Movie record);

    Movie selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Movie record);

    int updateByPrimaryKeyWithBLOBs(Movie record);

    int updateByPrimaryKey(Movie record);
    
    /**
     * 获得最高评分的六部电影
     * @return
     */
    List<Movie>getTopSixMovie(int isShow);

    /**
     * 批量保存电影
     * @param movieList
     */
    void saveMovieList(List<Movie> movieList);

    /**
     * 根据电影名查询电影
     * @param movieName
     * @return
     */
    Movie selectByMovieName(String movieName);

    /**
     * 根据电影类型加载电影0即将上映 1 已结上映
     * @param isShow
     * @return
     */
	List<Movie> loadMovieList(int isShow);

	/**
	 * 个性化推荐
	 * @param userHobby
	 * @return
	 */
	List<Movie> getTopSpecialMovie(String userHobby);
	
	int getMovieCrawler();
}