package com.mdd.mt.crawler;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mdd.mt.model.Cinema;
import com.mdd.mt.model.Movie;
import com.mdd.mt.service.CinemaServiceImpl;
import com.mdd.mt.service.MovieCinemaServiceImpl;
import com.mdd.mt.service.MovieScheduleServiceImpl;
import com.mdd.mt.service.MovieServiceImpl;
import com.mdd.mt.utils.CommonUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.util.*;

public class JDCrawler {
	@Autowired
	private MovieServiceImpl movieService;

	@Autowired
	private CinemaServiceImpl cinemaService;

	@Autowired
	private MovieCinemaServiceImpl movieCinemaService;

	@Autowired
	private MovieScheduleServiceImpl movieScheduleService;

	private static Log log = LogFactory.getLog(JDCrawler.class);

	private static String getCinemaIdUrl = "http://movie.jd.com/json/seat/seat_movieIssue.action?cityId=4403";

	private static String getCinameUrl = "http://movie.jd.com/json/seat/seat_buy.action?cityId=4403";

	/**
	 * 京东电影票爬虫
	 * 
	 * @param indexUrl
	 *            "http://movie.jd.com/m_channel"
	 */
	public void crawler(String indexUrl) {
		List<String> movieUrlList = getMovieDetailUrl(indexUrl);
		for (String movieUrl : movieUrlList) {
			Element movieBody = null;
			try {
				movieBody = Jsoup.connect(movieUrl).get().body();
			} catch (IOException e) {
				log.debug("获取电影详细页出错！");
			}
			// 解析电影
			Movie movie = analyzeMovie(movieBody);
			System.out.println(movie);
			// 拼接影院url
			if (StringUtils.isNotBlank(movieUrl) && movieUrl.contains("_")) {
				String movieUrlId = movieUrl.substring(movieUrl.indexOf("_") + 1);
				String date = CommonUtils.date2String(new Date());
				String cinemaIdUrl = getCinemaIdUrl + "&movieId=" + movieUrlId + "&day=" + date + "&regionId=0";
				Element cinemaJsonStr = null;
				try {
					cinemaJsonStr = Jsoup.connect(cinemaIdUrl).ignoreContentType(true).timeout(5000).get().body();
				} catch (IOException e) {
					log.debug("获取影院id出错！");
				}
				
				Set<String>cinameUrlSet = analyzeCinemaUrl(cinemaJsonStr.toString(), movieUrlId);
				Iterator<String>it = cinameUrlSet.iterator();
				while(it.hasNext()){
					String cinemaScheduleJsonStr = "";
					String url = it.next();
					try {
						cinemaScheduleJsonStr = Jsoup.connect(url).ignoreContentType(true).timeout(5000).get().body().toString();
						System.out.println(url);
					} catch (IOException e) {
						log.debug("获取影院页出错！");
					}
					
					cinemaScheduleJsonStr = cinemaScheduleJsonStr.replace("null(", "").replace("<body>", "").replace("</body>", "");
					cinemaScheduleJsonStr = cinemaScheduleJsonStr.substring(0, cinemaScheduleJsonStr.lastIndexOf(");"));
					JSONObject.parse(cinemaScheduleJsonStr);
					JSONObject JsonObject = JSON.parseObject(cinemaScheduleJsonStr); 
					//影院信息
					JSONObject cinemaDetailJson = (JSONObject)JsonObject.get("cinemaDetail");
					if(cinemaDetailJson!=null){
						Cinema cinema = new Cinema();
						//影院名称
						cinema.setCinemaName((String) cinemaDetailJson.get("cinemaName"));
						//地址
						cinema.setAddress((String)cinemaDetailJson.get("address"));
						//电话
						cinema.setTel((String) cinemaDetailJson.get("conactTel"));
						//区域
						cinema.setArea((String) cinemaDetailJson.get("regionName"));
						cinema.setArea((String) cinemaDetailJson.get("regionName"));
//						introduction 介绍
						String showData = JsonObject.get("showData").toString();
						JSONArray jsonArray = JSON.parseArray(showData);
						for(int i=0;i<jsonArray.size();i++){
							jsonArray.get(i);
						}
					}

					
				}
			}
		}

	}
	
//	private List

	/**
	 * 解析电影信息
	 * 
	 * @param movieBody
	 * @return
	 */
	private Movie analyzeMovie(Element movieBody) {
		Movie movie = new Movie();
		// 电影名
		String movieName = movieBody.select("#movieId").text();
		movie.setMovieName(movieName);
		// 评分
		String scoreStr = movieBody.select("body > div.movie-top > div > div.mt-title > div > div.clearfix > div > em")
				.text();
		if (StringUtils.isNotBlank(scoreStr) && !"暂无评分".equals(scoreStr)) {
			movie.setScore(CommonUtils.string2double(scoreStr));
		}
		// 海报
		Element infoElement = movieBody.select("body > div.movie-top > div > div.mt-infor").get(0);
		String posterUrl = infoElement.select("div.img").attr("src");
		movie.setPosterUrl(posterUrl);
		// 导演
		String director = infoElement.select("dl > dd.movie-director > div > p").text();
		movie.setDirector(director);
		// 演员
		String performer = "";
		Elements nameEles = infoElement.select("div.name");
		for (Element ele : nameEles) {
			performer = performer + ele.text();
		}
		movie.setPerformer(performer);
		// 类型
		String movieType = infoElement.select("dl > dd.movie-type > div > p > span:nth-child(2)").text();
		movie.setMovieType(movieType);
		// 时间
		String movieTime = infoElement.select("dl > dd.movie-type > div > p > span:nth-child(3)").text();
		movie.setMovieTime(movieTime);
		// 上映时间
		String rescheduledTime = infoElement.select("dl > dd.movie-type > div > p > span:nth-child(4)").text();
		movie.setRescheduledTime(rescheduledTime);
		// 剧情
		String movieStory = infoElement.select("dl > dd.movie-intro.js-plot-short-infor > div > div > div > p").text();
		movie.setMovieStory(movieStory);
		movie.setIsShow(1);
		return movie;
	}

	/**
	 * 拿到热映电影url
	 * 
	 * @param indexUrl
	 * @return
	 */
	private List<String> getMovieDetailUrl(String indexUrl) {
		ArrayList<String> list = new ArrayList<String>();
		Element body = null;
		try {
			body = Jsoup.connect(indexUrl).get().body();
		} catch (IOException e) {
			e.printStackTrace();
		}
		Elements ddElements = body.select("#list1 > ul > li >dl >dd");
		for (Element ele : ddElements) {
			String url = ele.select("div.p-img > a").attr("href");
			if (StringUtils.isBlank(url)) {
				continue;
			}
			url = "http://movie.jd.com" + url;
			list.add(url);
		}
		return list;
	}

	/**
	 * 解析所有电影院的url的id
	 * 
	 * @param jsonStr
	 * @return
	 */
	private Set<String> analyzeCinemaUrl(String jsonStr, String movieUrlId) {
		LinkedHashSet<String> set = new LinkedHashSet<String>();
		if (StringUtils.isNotBlank(jsonStr)) {
			String date = CommonUtils.date2String(new Date());
			List<String> cinemaIdList = CommonUtils.multipMatch2(jsonStr, "\"pid\":(\\d*)");
			for (String cinemaId : cinemaIdList) {
				if (StringUtils.isNotBlank(cinemaId) && !"0".equals(cinemaId)) {
					String cinameUrlResult = getCinameUrl + "&movieId=" + movieUrlId + "&day=" + date + "&cinemaId="
							+ cinemaId;
					set.add(cinameUrlResult);
				}
			}
		}
		return set;
	}

	public static void main(String[] args) {

		JDCrawler jdCrawler = new JDCrawler();
		jdCrawler.crawler("http://movie.jd.com/m_channel");
	}
}
