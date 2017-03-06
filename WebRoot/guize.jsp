<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML">
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0,user-scalable=no">
    <title>2016宁波“万里杯”中东欧国家知识竞赛</title>
    <link href="css/bootstrat.css" rel="stylesheet">
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	 <%@include file="common/public.jsp" %>
	<style type="text/css">
		*{font-family:"微软雅黑";}
		body{background:#eee;}
		.bg{background:url("images/bg.jpg") no-repeat;background-size:100% 100%;height:300px;position:relative;}
		.bg h1{margin:0;line-height:300px;text-align:center;color:#535f77;font-weight:bolder;
			-webkit-text-shadow:#fff 2px 0 0,#fff 0 2px 0,#fff -2px 0 0,#fff 0 -2px 0;  
			-moz-text-shadow:#fff 2px 0 0,#fff 0 2px 0,#fff -2px 0 0,#fff 0 -2px 0;  
			text-shadow:#fff 2px 0 0,#fff 0 2px 0,#fff -2px 0 0,#fff 0 -2px 0;   
			*filter: Glow(Color=#fff, Strength=2);  
		}
		h2{font-weight:bolder;margin:40px 0;}
		.bg h3{position:absolute;right:16%;top:0px;margin-top: 16px;color:#F66042;font-weight:bolder;}
		.bg img{width:14%;position:absolute;bottom:0;right:0;}
		.d{text-align:center;height:300px;}
		.contentbody{margin-top:20px;}
		.contentbody .content{padding:8%;background:#00B88F;color:#fff;}
		.contentbody .content p{text-indent: 2em;font-size:16px;font-weight:bolder;}
		nav{margin-top:20px;}
		.navbar-default{background-color: #4f608b;border-color: #828282;}
		.navbar-default .navbar-brand {color: #fff;}
		.navbar-default .navbar-nav>li>a {color:#fff;font-weight:bolder;}
		.nav>li>a{padding: 15px 28px;}
		.navbar-default .navbar-brand:hover{color:#ccc;}
		.bc h2{text-align:left;}
		.bc p{margin-top:30px;}
		.bc p span{margin-top:6px;display:block;}
		.bc{background:#fff;}
		footer{margin-top:50px;}
		footer p{margin:0;text-align: center;background: #4f608b;padding:6px 0;color:#fff;}
		
		@media screen and (max-width:1200px){
			.contentbody .content{padding:4%;}
			h2{font-size:1.8em;}
		}
		
		@media screen and (max-width:992px){
			.bg{height:250px;}
			.bg h1{line-height:250px;font-size:2em;}
			h2{font-size:1.6em;}
			.contentbody .content p{font-size:14px;}
			.contentbody .content{padding:1%;}
			.bg h3{font-size:1.6em; }
		}
		@media screen and (max-width:768px){
			.bg{height:200px;}
			.bg h1{line-height:200px;font-size:1.6em;}
			h2{font-size:1.4em;}
			.bg h3{font-size:1.3em; }
		}@media screen and (max-width:500px){
			.bg{height:150px;}
			.bg h1{line-height:150px;font-size:1.2em;}
			h2{font-size:1.2em;}
			.content p{font-size:14px;}
			.bg h3{font-size:1em; }
			
		}
	</style>
  </head>
  
  <body>
   <div class="container">
	   <div class="row" >
	   	  <div class="col-sm-1 col-xs-12" ></div>
	      <div class="col-sm-10 col-xs-12" >
			   <div class="bg">
			   		<h1>
			   			2016宁波"万里杯"中东欧国家知识大赛
			   		</h1>
			   		<h3>分享知识，共赢未来</h3>
			   		<img alt="二维码" src="images/cm.jpg">
			   </div>
   			</div>
   		<div class="col-sm-1 col-xs-12" ></div>
   		</div>
   </div>
   
   <div class="container contentbody">
	   <div class="row" >
	      <div class="col-sm-6 col-xs-12" >
	      	<div class="content">
	       		<p>本次知识大赛活动作为第二届中国—中东欧国家投资贸易博
	       		览会系列活动之人文交流板块中的一个重要组成部分。本大赛主承办单位如下：</p>
	       		<p>主办单位：***</p>
	       		<p>承办单位：***</p>
	       		<p>媒体支持单位：***</p>
	       	</div>
	      </div>
	      <div class="col-sm-6 col-xs-12" >
	       	<div id="myCarousel" class="carousel slide" data-ride="carousel">
			   <!-- 轮播（Carousel）指标 -->
			   <ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			      <li data-target="#myCarousel" data-slide-to="2"></li>
			   </ol>   
			   <!-- 轮播（Carousel）项目 -->
			   <div class="carousel-inner">
			      <div class="item active">
			         <img src="images/1.jpg" alt="First slide">
			         <div class="carousel-caption">标题 3</div>
			      </div>
			      <div class="item">
			         <img src="images/2.jpg" alt="Second slide">
			         <div class="carousel-caption">标题 3</div>
			      </div>
			      <div class="item">
			         <img src="images/3.jpg" alt="Third slide">
			         <div class="carousel-caption">标题 3</div>
			      </div>
			   </div>
			</div> 
	      </div>
	   </div>
	</div>
	
	
		<div class="container">
	   <div class="row" >
	      <div class="col-sm-1 col-xs-12" ></div>
	       <div class="col-sm-10 col-xs-12" >
			<nav class="navbar navbar-default" role="navigation">
				<div class="col-sm-1 col-xs-1" ></div>
			   <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" 
			         data-target="#example-navbar-collapse">
			         <span class="sr-only">切换导航</span>
			         <span class="icon-bar"></span>
			         <span class="icon-bar"></span>
			         <span class="icon-bar"></span>
			      </button>
			   </div>
			   <div class="collapse navbar-collapse" id="example-navbar-collapse">
			      <ul class="nav navbar-nav">
			         <li><a href="${basePath}">大赛首页</a></li>
	       			 <li><a href="dasaijieshao.jsp">大赛介绍</a></li>
	        		  <li><a href="jiangpin.jsp">奖品设置</a></li>
	        		<li><a href="tiku.jsp">中东欧知识点</a></li>
			          <li><a href="reg.jsp">参赛注册</a></li>
			         <li><a href="login.jsp">竞赛答题</a></li>
			          <li class="active"><a href="javascript:void(0)">竞答规则</a></li>
			         <li><a href="callus.jsp">联系我们</a></li>
			      </ul>
			   </div>
			   <div class="col-sm-1 col-xs-1" ></div>
			</nav>
			</div>
			<div class="col-sm-1 col-xs-12" ></div>
		</div>
	</div>
	
	
	 <div class="container contentbody">
	   <div class="row" >
	   	  <div class="col-sm-1 col-xs-1" ></div>
	      <div class="col-sm-10 col-xs-10 content bc"  style="background:#fff;color:#333;">
		  	<h2>一、大赛赛制</h2>
		  	<p><span>
			1.大赛直接以网络在线答题来确定获奖名次。</span><br />
			<span>
			2.网络在线竞答初步定于5月21日—5月30日，颁奖仪式初步确定为（6月7日下午），具体时间以大赛官网公布为准。
			</span></p>
			
			<h2>二、大赛方式</h2>
			<p>
			<span>1.大赛方式为网络在线答题，即参与者可通过计算机PC端登录中东欧知识大赛官方网站，或通过手机微信端登录竞赛官网，了解中东欧国家知识点并进行大赛答题。</span><br />
			<span>2.大赛题目为全中文竞答题，题型为单项选择题或判断题。</span><br />
			<span>3.网络在线竞答要求在20分钟内完成一份竞答题。未竞答题目，计算机自动视为零分。</span><br />
			<span>4.每一份竞答题数量为50题，由计算机自动从题库（共1000题）中随机抽取，涉及中东欧国家历史、政治、人文、经济、地理、艺术、教育等各个相关领域，重点要突出中国（宁波）与中东欧国家的文化交流与经贸合作，并延伸至“一带一路”有关知识。</span><br />
			<span>5.题目分为两级：较小难度占60%，有一定难度占40%。</span></p>
			<h2>三、评分标准</h2>
			<p>网络在线答题以最终分数为评判标准，答题成绩以分值高低排序，同分值以时间最短者优先排序，同分值同时间以答题先后顺序排序。
			名单及排序均在大赛官网上公布。</p>
			<h2>四、获奖等级</h2>
			<p>
			<span>1.根据参赛者网络在线答题成绩，由计算机按照评分标准确定排序，并直接产生确定优秀奖、三等奖、二等奖、一等奖、特等奖名单。</span><br />
			<span>2.一等奖、特等奖人员代表将参加颁奖仪式。</span></p>
			<h2>五、参赛报名</h2>
			<p>
			<span>1.报名对象：面向宁波市全体民众开放，含在校学生、在甬务工人员及旅行人员等。</span><br />
			<span>2.报名时间：自2016年 5月20日官网上线发布，至2016年5月30日24:00答题结束时止。</span><br />
			<span>3.报名方式：个人报名（以个人身份证号码注册报名，作为领取奖品的唯一凭证号码）。</span><br />
			<span>4.报名途径：</span><br />
			<span>①以计算机PC端登录中东欧知识大赛官网注册报名。
			报名网址：www.ningbo-ceecknowledge.com</span><br />
			<span>②通过手机微信端扫描“宁波海上丝绸之路研究院官方微信”注册报名。</span><br />
			<span>5.大赛组委会组织执行核对参赛者信息真实性。大赛主办方对参赛人员的信息真实性审核以及获奖人员名单确认有最终解释权，
			如参赛人员在比赛期间存在作弊及身份造假等不当行为，大赛组委会有权取消其参赛资格。</span>
			</p>
			<h2>六、参赛费用</h2>
			<p>
				<span>个人注册报名参赛不收取任何费用。大赛过程中任何机构不得以任何名义面向参赛者收取任何费用。</span>
			</p>
			
			<h2>七、大赛公正</h2>
			<p>本次大赛活动将由宁波市天一公正处进行全程公证。</p>
		  </div>
	      <div class="col-sm-1 col-xs-1" ></div>
	   </div>
	 </div>
	 
	 <footer>
		<p>技术支持***，宁波海丝院版权所有</p>
	</footer>
	 
  </body>
</html>
