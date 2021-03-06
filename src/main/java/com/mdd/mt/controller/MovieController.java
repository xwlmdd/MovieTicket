package com.mdd.mt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mdd.mt.mapper.NoticeMapper;
import com.mdd.mt.model.Cinema;
import com.mdd.mt.model.Comment;
import com.mdd.mt.model.CommentView;
import com.mdd.mt.model.Movie;
import com.mdd.mt.model.User;
import com.mdd.mt.service.CinemaServiceImpl;
import com.mdd.mt.service.CommentServiceImpl;
import com.mdd.mt.service.MovieServiceImpl;
import com.mdd.mt.service.UserService;

/**
 * 
 * @author xwl
 *
 */
@Controller
@RequestMapping("/mt/")
public class MovieController {
	@Autowired
	private MovieServiceImpl movieServiceImpl;

	@Autowired
	private CommentServiceImpl commentServiceImpl;

	@Autowired
	private UserService userService;
	
	@Autowired
	private CinemaServiceImpl cinemaServiceImpl;
	
	@Autowired
	private NoticeMapper noticeMapper;

	/**
	 * 加载首页信息
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("loadIndex")
	public String loadIndex(ModelMap modelMap) {
		// 已上映
		List<Movie> isShowMovieList = movieServiceImpl.getTopSixMovie(1);
		// 未上映
		List<Movie> noShowMovieList = movieServiceImpl.getTopSixMovie(0);
		
		modelMap.put("isShowMovieList", isShowMovieList);
		modelMap.put("noShowMovieList", noShowMovieList);
		modelMap.put("noticeList", noticeMapper.getNoticeList());
		return "index";
	}
	
	/**
	 * 个性化推荐
	 * @param modelMap
	 * @param userHobby
	 * @return
	 */
	@RequestMapping("special")
	public String special(ModelMap modelMap,String userHobby,HttpServletRequest request) {
		// 个性化推荐
		User user = (User) request.getSession().getAttribute("u");
		if(user==null){
			request.setAttribute("message", "你还没有登陆，请先登陆！");
			return "login";
		}
		List<Movie> movieList = movieServiceImpl.getTopSpecialMovie(userHobby);
		modelMap.put("movieList", movieList);
		return "specialMovieList";
	}
	

	/**
	 * 电影详细信息
	 * 
	 * @param movieId
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("movieDetail")
	public String movieDetail(@Param("movieId") int movieId, ModelMap modelMap) {
		movieDetailUtil(movieId,"深圳", modelMap);
		//热门推荐前6部
		// 已上映
		List<Movie> isShowMovieList = movieServiceImpl.getTopSixMovie(1);
		modelMap.addAttribute("movieList", isShowMovieList);
		return "movieDetail";
	}

	/**
	 * 发布评论
	 * @param comment
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("postComment")
	public String postComment(Comment comment, ModelMap modelMap,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("u");
		if(user==null){
			modelMap.addAttribute("message","请你先登入！");
			return "login";
		}
		commentServiceImpl.insertComment(comment);
		movieDetailUtil(comment.getMovieId(), "深圳",modelMap);
		return "movieDetailWithComment";
	}

	/**
	 * 加载电影详细信息
	 * @param movieId
	 * @param modelMap
	 */
	private void movieDetailUtil(int movieId, String city,ModelMap modelMap) {
		//选票场次
		List<String> areaList = cinemaServiceImpl.loadAreaByCity("深圳");
		modelMap.addAttribute("areaList", areaList);
		// 电影信息
		Movie movie = movieServiceImpl.getMovieById(movieId);
		modelMap.addAttribute("movie", movie);
		// 影评信息
		List<CommentView> commentViewList = new ArrayList<CommentView>();
		List<Comment> commentList = commentServiceImpl.getCommentByMovieId(movieId);
		for (Comment comment : commentList) {
			CommentView commentView = new CommentView();
			User user = userService.getUserById(comment.getUserId());
			if (user != null) {
				BeanUtils.copyProperties(comment, commentView);
				commentView.setUserName(user.getUserName());
				commentView.setUserPicture(user.getUserPicture());
				commentView.setUserTel(user.getUserTel());
				commentViewList.add(commentView);
			}
		}
		modelMap.addAttribute("commentViewList", commentViewList);
	}
	
	
	/**
	 * 加载热映电影
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("loadMovieList")
	public String loadMovieList(ModelMap modelMap,int isShow){
		List<Movie>movieList = movieServiceImpl.loadMovieList(isShow);
		modelMap.addAttribute("movieList", movieList);
		return "movieList";
	}
	
	
	
}
