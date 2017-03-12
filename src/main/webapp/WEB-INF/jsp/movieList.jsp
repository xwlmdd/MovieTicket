<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!-- saved from url=(0026)http://www.189mv.cn/movie/ -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="application-name" content="院线通">
<meta name="title" content="院线通">
<title>院线通-电影</title>
<meta name="keywords" content="电影,院线通电影,最新电影,热门电影,最好看的电影,评分高的电影,即将上映电影,手机订电影票，影片，电影，即将上映，电影列表">
<meta name="description" content="南昌各大电影院新片上映计划,电影排期">
<link rel="dns-prefetch" href="http://www.189mv.cn/">
<link rel="dns-prefetch" href="http://image.189mv.cn/">
<link href="<%=request.getContextPath()%>/css/public.css" type="text/css" rel="stylesheet">
<link href="http://www.189mv.cn/web/style/list.css?version=6.2" type="text/css" rel="stylesheet">
</head>
<body>
<div class="body_w">
    <div class="header">
    	<div class="logo"><a href="http://www.189mv.cn/">院线通</a></div>
    	<div class="turn_city fl">
        	<span class="t_c_box">南昌<em><i></i></em></span> 
        	
            <div id="select_city_sub_menu" class="city popres t_c_list" style="display:none;">
            		<div class="loading_city" style="display:none" id="loadingCity"><img src="./images/loading26.gif"></div>
			</div>
			
        </div><!--城市选择-->
    <div class="t_nav" id="userstatediv"><a href="javascript:register();">注册</a> | <a href="javascript:login();" id="loginbtn">登录</a> | <a href="http://www.189mv.cn/help/" target="_blank">帮助</a></div>
  </div>
</div>

<div class="b_blue">
  <div class="main_nav">
    <ul class="m_nav_list fix">
      <li class="home"><a href="http://www.189mv.cn/">首页</a></li>
      <li><a href="http://www.189mv.cn/movie/">电影</a></li>
      <li><a href="http://www.189mv.cn/cinema/">影院</a></li>
      <li><a href="http://www.189mv.cn/news/">电影资讯</a></li>
      <li><a href="http://www.189mv.cn/phone/">手机订票</a></li>
      <li><a href="http://www.189mv.cn/activity/">活动</a></li>
       
       	<li><a href="http://www.189mv.cn/groupon/">商企优选</a></li>
       		
      
            		
      <li><a href="http://www.189mv.cn/voucher/" style="padding:0px 20px;">兑换券购买</a></li>
      
      <!--<li><a href="javascript:void(0);" >会员专区</a></li>  -->
    </ul>
  </div>
</div><!--end 导航-->
<div class="wrapper">
	<div class="crumbs mart10">
  	您的位置：<a href="http://www.189mv.cn/">院线通</a> &gt; <span>电影</span>
  </div>
</div>
<div class="wrapper">
  <div class="hot_film com_b mart10 fix top-film">
  <div class="film-tab">
	<ul id="filmTab">
		<li><a href="javascript:void(0);" class="cur">正在热映</a></li>
		<li><a href="javascript:void(0);" class="">即将上映</a></li>
		<li><a href="javascript:reviewfilm();">经典回顾</a></li>
		<div class="clear"></div>
	</ul>
  </div>
		
  <div id="section-cont">
	<div class="section hot-section" id="hotfilmsection" style="min-height: 300px; display: block;">
<p class="total-film">共<span class="num">14</span>部影片上映</p>
<div class="film-img fl">
  <a href="http://www.189mv.cn/movie/29731/" class="p" id="firsthotfilmimg"><img src="http://image.189mv.cn/images/filmlib/9850221fec6c4d27a6fb2213e9382203_HB2_41527.jpg?w=440&amp;quality=100" width="352" height="216"></a>
</div>
<div class="ct fr">
<div class="c">
      <h3><a href="http://www.189mv.cn/movie/29731/">金刚狼3：殊死一战</a></h3>
      <div class="s">
         <span class="star">
             <span class="star_now" style="width:82%"></span>
         </span>
         <em class="score">8.2</em>
         </div>
     </div>
    <div class="u">
    	<ul>
           <li>导演: 詹姆斯·曼高德</li>  
           <li>主演: 休·杰克曼 / 帕特里克·斯图尔特 / 波伊德·霍布鲁克 / 理查德·E·格兰特 / 斯戴芬·莫昌特</li>  
           <li>语言: 英语</li> 
           <li>片长: 123分钟</li> 
    	</ul>
    </div> 
    <div class="hot_cine">
   	<div class="txt">
       	<h3 class="orange">热门影院</h3>
           <span class="a a-828"><a href="http://www.189mv.cn/movie/29731/" id="showsinfo">共3家影院，3场次</a></span>
       </div>
       <div class="c_list">
   		<ul class="fix" id="hotcinemas">
         <li><div class="ut"><span class="t"><a href="http://www.189mv.cn/cinema/sp0313282/">冷杉欢腾影城上海北路店</a></span><span class="n">共1个场次</span></div></li><li><div class="ut"><span class="t"><a href="http://www.189mv.cn/cinema/sp019VS121113/">南昌金逸影城-红谷滩店</a></span><span class="n">共1个场次</span></div></li><li><div class="ut"><span class="t"><a href="http://www.189mv.cn/cinema/sp019CMT36014601/">南昌冷杉欢腾影城</a></span><span class="n">共1个场次</span></div></li></ul>
        </div>
    </div>   
</div>
<div class="clean"></div>
<div class="hot-line">
	<div class="hot-cont">
		<ul class="JQ-slide-content pic_lsit fix">
	
   <li>
	<a href="http://www.189mv.cn/movie/29790/" class="pic" title="一条狗的使命" target="_blank"><img src="./images/f014f945658b3d287a7128021c0d82f1_HB1_41676.jpg" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29790/" class="blue" title="一条狗的使命" target="_blank">一条狗的使命</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:82%"></span>
	        </span>
	        <em class="score">8.2</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29670/" class="pic" title="最终幻想15：王者之剑" target="_blank"><img src="./images/8da8d2857fe10a437361f20db18c085d_HB1_41376.jpg" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29670/" class="blue" title="最终幻想15：王者之剑" target="_blank">最终幻想15：王者之剑</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:80%"></span>
	        </span>
	        <em class="score">8.0</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29952/" class="pic" title="天才捕手" target="_blank"><img src="./images/63e220b8fe15058141765cff09630c57_HB1_41991.jpg" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29952/" class="blue" title="天才捕手" target="_blank">天才捕手</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:80%"></span>
	        </span>
	        <em class="score">8.0</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29650/" class="pic" title="生化危机：终章" target="_blank"><img src="<%=request.getContextPath()%>/images/7499965c0fffafc8424c36b8ba37b0d8_HB1_41836.jpg" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29650/" class="blue" title="生化危机：终章" target="_blank">生化危机：终章</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:80%"></span>
	        </span>
	        <em class="score">8.0</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29892/" class="pic" title="玛格丽特的春天" target="_blank"><img src="<%=request.getContextPath()%>/images/acb98b0af3748bc4f305d6cc0747bbf9_HB1_41807.jpg" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29892/" class="blue" title="玛格丽特的春天" target="_blank">玛格丽特的春天</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:77%"></span>
	        </span>
	        <em class="score">7.7</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29850/" class="pic" title="夜色撩人" target="_blank"><img src="<%=request.getContextPath()%>/images/8674bf513a0526e2755f0c08a41f6dd2_HB1_41754.jpg" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29850/" class="blue" title="夜色撩人" target="_blank">夜色撩人</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:77%"></span>
	        </span>
	        <em class="score">7.7</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/27310/" class="pic" title="碟仙诡谭2" target="_blank"><img src="http://image.189mv.cn/images/filmlib/fd30e78d3117b50599eb14aa264fcbe5_HB1_33567.jpg?w=300&amp;quality=100" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/27310/" class="blue" title="碟仙诡谭2" target="_blank">碟仙诡谭2</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:74%"></span>
	        </span>
	        <em class="score">7.4</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29510/" class="pic" title="欢乐好声音" target="_blank"><img src="http://image.189mv.cn/images/filmlib/3ba0633b2d957b70aeebfe617234fe30_HB1_40762.jpg?w=300&amp;quality=100" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29510/" class="blue" title="欢乐好声音" target="_blank">欢乐好声音</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:83%"></span>
	        </span>
	        <em class="score">8.3</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29530/" class="pic" title="爱乐之城" target="_blank"><img src="http://image.189mv.cn/images/filmlib/52692876b5b1e6d84b14f5744ba2be10_HB1_40856.jpg?w=300&amp;quality=100" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29530/" class="blue" title="爱乐之城" target="_blank">爱乐之城</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:90%"></span>
	        </span>
	        <em class="score">9.0</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29011/" class="pic" title="惊魂绣花鞋" target="_blank"><img src="http://image.189mv.cn/images/filmlib/70e4c454ba6b9d697eb9f387702cbfbb_HB1_39103.jpg?w=300&amp;quality=100" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29011/" class="blue" title="惊魂绣花鞋" target="_blank">惊魂绣花鞋</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:73%"></span>
	        </span>
	        <em class="score">7.3</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29732/" class="pic" title="乐高蝙蝠侠大电影" target="_blank"><img src="http://image.189mv.cn/images/filmlib/d596c163af4b7ef2f6f090b1083d3575_HB1_41556.jpg?w=300&amp;quality=100" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29732/" class="blue" title="乐高蝙蝠侠大电影" target="_blank">乐高蝙蝠侠大电影</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:83%"></span>
	        </span>
	        <em class="score">8.3</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/28309/" class="pic" title="诡眼" target="_blank"><img src="http://image.189mv.cn/images/filmlib/533c080aada54f6512307ffac816ecab_HB1_41882.jpg?w=300&amp;quality=100" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/28309/" class="blue" title="诡眼" target="_blank">诡眼</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:68%"></span>
	        </span>
	        <em class="score">6.8</em>
	        </div>
	    </div>
	</li>
	
   <li>
	<a href="http://www.189mv.cn/movie/29450/" class="pic" title="乘风破浪" target="_blank"><img src="http://image.189mv.cn/images/filmlib/a7fcefa65cb0ad6b1cc0ede31a8e586d_HB1_40460.jpg?w=300&amp;quality=100" width="137" height="170"></a>
     
	 <div class="con">
	    <h3><a href="http://www.189mv.cn/movie/29450/" class="blue" title="乘风破浪" target="_blank">乘风破浪</a></h3>
	    <div class="s">
	    <span class="star">
	        <span class="star_now" style="width:80%"></span>
	        </span>
	        <em class="score">8.0</em>
	        </div>
	    </div>
	</li>
	
	  </ul>
	</div>
</div>
	
<script type="text/javascript">
$(function (){
   var hotFilmId = "29731";
   $.ajax({
	    url: root + "qryFilm.htm",
	    dataType :"json",
	    cache: false,
	    type:"POST",
	    data : {"mid" : hotFilmId},
	    success: function(json) {
	    	if("00" === json.result) {
	    		var htFilm = json.films[0];
	    		var stripeImgUrl = htFilm.stripeImgUrl;
	    		if(!stripeImgUrl) {
	    			var filmPics = htFilm.filmPics;
	    			if(filmPics && filmPics.length > 0) {
	    				stripeImgUrl = filmPics[0].picUrl;
	    			}
	    		}
	    		if(!stripeImgUrl) {
	    			stripeImgUrl = root + "web/images/nopic.png";
	    		}
	    		$("#firsthotfilmimg").append("<img src=\""+ stripeImgUrl +"?w=440&quality=100\" width=\"352\" height=\"216\">");
	    	}
	   	},
	   	error : function(json) {
		  //XXX
	   	}
	});
   
   $.ajax({
	    url: root + "qryHotCinemss.htm",
	    dataType :"json",
	    cache: false,
	    type:"POST",
	    data : {"mid" : hotFilmId},
	    success: function(json) {
	    	if("00" === json.result) {
	    		var cinemas = json.cinemas;
	    		for(var i = 0; i < 4 && i < cinemas.length; i++) {
	    			var cTab = $("<li><div class=\"ut\"><span class=\"t\"><a href=\""+ root +"cinema/"+ cinemas[i].cinemaId +"/\">" + cinemas[i].cinemaName + "</a></span><span class=\"n\">共"+ cinemas[i].showCnt +"个场次</span></div></li>");
	    			$("#hotcinemas").append(cTab);
	    		}
	    		var cinemaDesc = "共" + json.cinemaCnt + "家影院，" + json.showCnt + "场次";
	    		$("#showsinfo").html(cinemaDesc);
	    	}
	   	},
	   	error : function(json) {
	   	}
	});
});
</script>
</div>    
	<div class="section new-section" id="prefilmsection" style="display: none;"></div>
	<div class="section old-section" style="display:none">
		<div class="com_act mart fix">
			<div class="act_t">
					<div class="flim_type">
						  <span class="t">影片类型：</span>
						  <ul class="fix" id="qrytype">
							  <li><a href="javascript:qryFilmByType(&#39;alltype&#39;,&#39;全部&#39;);" id="alltype" class="cur">全部</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;dongzuo&#39;,&#39;动作&#39;);" id="dongzuo">动作</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;xiju&#39;,&#39;喜剧&#39;);" id="xiju">喜剧</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;kehuan&#39;,&#39;科幻&#39;);" id="kehuan">科幻</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;kongbu&#39;,&#39;恐怖&#39;);" id="kongbu">恐怖</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;jilu&#39;,&#39;记录&#39;);" id="jilu">记录</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;gewu&#39;,&#39;歌舞&#39;);" id="gewu">歌舞</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;zhanzhen&#39;,&#39;战争&#39;);" id="zhanzhen">战争</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;donghua&#39;,&#39;动画&#39;);" id="donghua">动画</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;juqing&#39;,&#39;剧情&#39;);" id="juqing">剧情</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;lishi&#39;,&#39;历史&#39;);" id="lishi">历史</a></li>
							  <li><a href="javascript:qryFilmByType(&#39;yinyue&#39;,&#39;音乐&#39;);" id="yinyue">音乐</a></li>
							</ul>
					</div>
				  <div class="old-film-search">
				  		<span>影片搜索：</span>
				  		<div class="act_ser search-box  old-film-box">
			                <div class="i_so">
			                 <input type="text" id="keyword" placeholder="输入关键词搜索影片" value="" class="search-keyword" name="keyword">
			                 <a href="javascript:search();" class="search_btn"></a>
			               </div>
						</div>
				  </div>
				  <div class="flim_sort">
					 <ul class="fix" id="sorttype">
						<li><a href="javascript:sortFilm(&#39;grade&#39;);" id="grade" class="cur">按评分顺序</a></li>
						<li><a href="javascript:sortFilm(&#39;time&#39;);" id="time">按上映时间排序</a></li>
					 </ul>
				  </div>
			 </div>
		  <div id="oldfilmsection" style="min-height:300px;">
		  		<div class="old-film-loading" style="display:none;text-align:center;" id="loading_old">
		  		      <img src="http://www.189mv.cn/web/images/loading2.gif">
		  		</div>	
		  </div>
		</div>
	</div>
	</div>
  </div>
</div>
  <div id="footer" class="fix">
       	  <p class="frlink">友情链接:<a href="http://webmail23.189.cn/webmail/" target="_blank">189邮箱</a> | <a href="http://itv.huiyong123.com/" target="_blank">ITV</a> | <a href="http://gd.189.cn/" target="_blank">网上营业厅</a> | <a href="http://gd.chinavnet.com/" target="_blank">互联星空</a> 
       	  | <a href="http://www.189mv.cn/contactUs/" target="_blank">联系我们</a></p>
          <ul>
      		 <li><a href="javascript:void(0);"><img src="./院线通-首页_files/dianxin_img.gif" width="120" height="42"></a></li>
        	<li>客服电话：4008610001<br>电信及增值业务经营许可证：粤ICP备14020429号<br>Copyright© 2007—2013 中国电信 版权所有</li>
       	    <li><a href="http://www.gzjd.gov.cn/newgzjd/baojing/110.jsp?catid=318"><img src="./院线通-首页_files/jiancha_img.gif" width="44" height="47"></a></li>
        </ul>
</div>
  
  
	
<script src="js/hm.js"></script><script type="text/javascript" src="<%=request.getContextPath()%>/js/des.js"></script>
<input type="hidden" id="basepath" value="http://www.189mv.cn/">
<input type="hidden" id="contextPath" value="">
<input type="hidden" id="needVerifyCode" value="false">
<input type="hidden" id="CIPHERKEY" value="0DA6A575AAE2C39F20191830">
<div class="zhezhao" id="coverall"></div>
<div class="login_tips" id="loginpop">
	<div class="c_tips_cont">
    	<a href="javascript:void(0);" class="c_close">关闭</a>
    	<h3 class="tip_h3">用户登录</h3>
    	<div id="loginpannel" style="display:block;">
	        <div style="padding-top:15px;">
	        	登录账号：
	        	<input name="" id="loginaccount" value="" placeholder="账号" class="login_ip" type="text" style="color:#939392;">
	        </div>
			<div class="remindBlock" id="accountmsg"></div>
			<div>
	        	登录密码：
	        	<input name="" id="loginpassword" value="" placeholder="密码" class="login_ip" type="password">
	        </div>
	        <div class="remindBlock" id="passwordmsg"></div>
	       
	        <div style="display:none;" id="loginImgCode">
	        <div>
	        	验&nbsp;证&nbsp;码&nbsp;&nbsp;：
	        	<input name="" id="loginimgcode" value="" maxlength="4" placeholder="" class="login_ip" style="width:90px;" type="text">
	        	<img id="logincodeimg" onclick="logImgRefresh();return false;" style="vertical-align:middle;" src="./院线通-首页_files/randomCode.jpg" width="80" height="26">
	        	<a href="javascript:void(0);" onclick="logImgRefresh();return false;">换一张</a>
	        </div>
	         <div class="remindBlock" id="logimgmsg"></div>
	        </div>
	        
			<div class="k_item_1" style="padding-left:74px;padding-bottom:10px;">
	           <span class="rem remUser">
	         	<input type="checkbox" id="remember"><label for="">记住账号</label>
	     	   </span>
	            <a href="http://www.189mv.cn/regist/" class="blue" style="margin-right:20px;">我要注册</a><a href="http://www.189mv.cn/forget/" class="blue">找回密码</a>
	        </div>
	    	<div class="c_tips_btn confirm_btn">
	    		<a href="javascript:void(0);" id="dologin" class="">确&nbsp;&nbsp;&nbsp;认</a>
	            <a href="javascript:void(0);" id="logincancel" class="">取&nbsp;&nbsp;&nbsp;消</a>
			</div>
			
		</div>
		<div id="loginloading" style="display:none;">
		    <div class="loginloading" style="height:167px;text-align: center;">
		    	<img src="./images/loading.gif" style="padding-top: 60px;">
		    </div>
		</div>
    </div>
</div>
<div class="c_tips" id="warntips" style="width:364px;display:none;">
        <div class="c_tips_cont">
            <a href="javascript:void(0);" class="c_close">关闭</a>
    	 	<h3 class="f_tip_txt">温馨提示</h3>
        <div class="ct_wrapper">
          <p class="vred" id="tipsmsg"></p>
        </div>
        <div class="c_tips_btn" id="tipsbotton"></div>
    </div>
</div>
<div class="waiting-pop" id="waitingPop" style="display:none;">
       <div class="waiting-con"></div>
</div>
<script type="text/javascript">
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?f3a470502268bd255498a2e6bd23f8d4";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>


<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/common.js"></script>
<script type="text/javascript">
var isIE=false;
$(function (){	
	tab1($("#filmTab li a"),$("#section-cont > .section"),"cur","click");
});

$(function (){
	$.ajax({
	    url: root + "showHotFilms.htm",
	    dataType :"html",
	    data:{"isIE":"false"},
	    cache: false,
	    type:"POST",
	    success: function(html) {
	    	$("#hotfilmsection").html(html);
	   	},
	   	error : function(json) {
		  //XXX
		  //showTips("系统错误");
	   	}
	});
	
	$.ajax({
	    url: root + "showPreFilms.htm",
	    dataType :"html",
	    cache: false,
	    type:"POST",
	    success: function(html) {
	    	$("#prefilmsection").html(html);
	   	},
	   	error : function(json) {
		  //XXX
		  //showTips("系统错误");
	   	}
	});
	
	$("#keyword").keyup(function (event) {
	    var keycode = event.which;
	    if(keycode == 13) {
	    	search();
	    }
	 });
	
});

var loadflag = false;
function reviewfilm() {
	if(loadflag) {
		return;
	}
	loadflag = true;
	$("#loading_old").show();
	var key = $.trim($("#keyword").val());

	$.ajax({
	    url: root + "showOldFilms.htm",
	    dataType :"html",
	    cache: false,
	    type:"POST",
	    data : {"key" : key},
	    success: function(html) {
	    	$("#loading_old").hide();
	    	$("#oldfilmsection").html(html);
	   	},
	   	error : function(json) {
		  //XXX
		  showTips("亲，服务出现了点小问题… 请重新尝试");
	   	}
	});
}


function search() {
	$("#loading_old").show();
	var key = $.trim($("#keyword").val());
	var type = $.trim($("#qrytype").find(".cur").html());
	if(type == "全部") {
		type = "";
	}
	$.ajax({
	    url: root + "showOldFilms.htm",
	    dataType :"html",
	    cache: false,
	    type:"POST",
	    data : {"key" : key,"type" : type},
	    success: function(html) {
	    	$("#loading_old").hide();
	    	$("#oldfilmsection").html(html);
	   	},
		error : function(json) {
		
			  showTips("亲，服务出现了点小问题… 请重新尝试");
		}
	});
}




function sortFilm(sorttype) {
	var curSortType = $("#sorttype").find(".cur").attr("id");
	var type = $.trim($("#qrytype").find(".cur").html());
	if(sorttype == curSortType) {
		return;
	}
	
	$("#sorttype a").removeClass("cur");
	$("#" + sorttype).addClass("cur");
	if(type == "全部") {
		type = "";
	}
	var key = $.trim($("#keyword").val());

	$.ajax({
	    url: root + "showOldFilms.htm",
	    dataType :"html",
	    cache: false,
	    type:"POST",
	    data : {"key" : key,"type" : type,"orderby" : sorttype, "pageNum" : "1"},
	    success: function(html) {
	    	$("#oldfilmsection").html(html);
	   	},
	   	error : function(json) {
		  //XXX
		  showTips("亲，服务出现了点小问题… 请重新尝试");
	   	}
	});
}

function qryFilmByType(self,type) {
	var curSortType = $("#sorttype").find(".cur").attr("id");
	var curQryType = $("#qrytype").find(".cur").attr("id");
	if(self == curQryType) {
		return;
	}
	$("#qrytype a").removeClass("cur");
	$("#" + self).addClass("cur");
	if(type == "全部") {
		type = "";
	}
	var key = $.trim($("#keyword").val());

	$.ajax({
	    url: root + "showOldFilms.htm",
	    dataType :"html",
	    cache: false,
	    type:"POST",
	    data : {"key" : key,"type" : type,"orderby" : curSortType, "pageNum" : "1"},
	    success: function(html) {
	    	$("#oldfilmsection").html(html);
	   	},
	   	error : function(json) {
		  //XXX
		  showTips("亲，服务出现了点小问题… 请重新尝试");
	   	}
	});
}

function toPage(num) {
	var sortType = $("#sorttype").find(".cur").attr("id");
	var type = $.trim($("#qrytype").find(".cur").html());
	if(type == "全部") {
		type = "";
	}
	var key = $.trim($("#keyword").val());

	$.ajax({
	    url: root + "showOldFilms.htm",
	    dataType :"html",
	    cache: false,
	    type:"POST",
	    data : {"key" : key,"type" : type,"orderby" : sortType, "pageNum" : num},
	    success: function(html) {
	    	$("#oldfilmsection").html(html);
	   	},
	   	error : function(json) {
		  showTips("亲，服务出现了点小问题… 请重新尝试");
	   	}
	});
}

function updateFilmGrade(id,name) {
	if(id && name) {
		var ckeValue = getCookie("film");
	   	 if(ckeValue) {
	   		 if(ckeValue.indexOf(id) <= -1) {
	   			ckeValue += "_" + id;
	   			setCookie("film",ckeValue,30);
	   		 } else {
	   			 return;
	   		 }
	   	 } else {
	   		 setCookie("film", id, 30);
	   	 }
		
		$.ajax({
		    url: root + "updateFilmGrade.htm",
		    dataType :"json",
		    cache: false,
		    type:"POST",
		    data : {"mid" : id , "filmName" : name},
		    success: function(json) {
		    	if("00" === json.result) {
		    		var grades = json.grades;
		    		var total = 998;
		    		try{
		    			total = parseInt($.trim($("#prefilm_tatal_" + id).html()));
		    		}catch(e) {
		    		}
		    		$("#prefilm_tatal_" + id).html(total+1);
		    	}
		   	},
		   	error : function(json) {
		   	}
		});
	}
}
</script>
</body></html>