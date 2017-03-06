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
    <link rel="stylesheet" type="text/css" href="css/elastislide.css" />
    <script src="js/modernizr.custom.17475.js"></script>
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
		h2{font-weight:bolder;}
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
		.reg{height:90%;margin-top: 5%;border:10px solid #fff;}
		.white{background:#fff;}
		.gray{background: #F2E6B6;}
		.blue{background:#E83F46;color:#fff;}	
		.reg h2 b{color:#EC8D28;}
		.white p{padding:6px;margin-top:16px;}
		.white p a{color:#6A6A6A;}
		.white p span{color:#1587cd}
		.gray a{display:block;color:#fff;
		background:#CD7C15;padding:16px;width:80%;border-radius:10px;margin:0 auto;font-size:18px;margin-top:64px;}
		.blue a{width:40%;background:#D15447;display:block;margin:30px auto;color:#fff;padding:6px;border-radius:8px;}
		.demo-1{margin-top:20px;}
		footer{margin-top:60px;}
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
			
		}
		@media screen and (max-width:500px){
			.bg{height:150px;}
			.bg h1{line-height:150px;font-size:1.2em;}
			h2{font-size:1.2em;}
			.content p{font-size:14px;}
			.bg h3{font-size:1em; }
			.demo-1{height:82px;}
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
			         <li class="active"><a href="${basePath}">大赛首页</a></li>
			         <li><a href="dasaijieshao.jsp">大赛介绍</a></li>
			         <li><a href="jiangpin.jsp">奖品设置</a></li>
			         <li><a href="tiku.jsp">中东欧知识点</a></li>
			          <li><a href="reg.jsp">参赛注册</a></li>
			         <li><a href="login.jsp">竞赛答题</a></li>
			          <li><a href="guize.jsp">竞赛规则</a></li>
			         <li><a href="callus.jsp">联系我们</a></li>
			      </ul>
			   </div>
			   <div class="col-sm-1 col-xs-1" ></div>
			</nav>
			</div>
		<div class="col-sm-1 col-xs-12" ></div>
		</div>
	</div>
	
	<div class="container">
	   <div class="row" >
	      <div class="col-sm-4 col-xs-12 d" >
	      	<div class="reg white">
	      		<h2><b>中东欧-</b>知识点</h2>
	      		<p>
	      			<span>&gt;</span>
	      			<a href="javascript:void(0)">知识点1知识点1知识点1</a>
	      		</p>
	      		<p>
	      			<span>&gt;</span>
	      			<a href="javascript:void(0)">知识点2知识点2知识点2</a>
	      		</p>
	      		<p>
	      			<span>&gt;</span>
	      			<a href="javascript:void(0)">知识点3知识点3知识点3</a>
	      		</p>
	      		<p>
	      			<span>&gt;</span>
	      			<a href="tiku.jsp">更多</a>
	      		</p>
	      	</div>
	      </div>
	      <div class="col-sm-4 col-xs-12 d" >
		      <div class="reg gray">
		      	<h2><b>中东欧竞赛-</b>注册入口</h2>
		      	<a href="reg.jsp">注册</a>
		      </div>
	      </div>
	      <div class="col-sm-4 col-xs-12 d" >
	      	<div class="reg blue">
			      <h3>网路竞赛于(15日00:00开始)</h3>
			      <!-- <h2>已经开赛</h2>
			      <a href="login.jsp">进入</a> -->
			      <h2>敬请期待</h2>
	      	</div>
	      </div>
	   </div>
	</div>
	
	<div class="container demo-1">

        <div class="main">
				<!-- Elastislide Carousel -->
				<ul id="carousel" class="elastislide-list">
					<li><a href="javascript:void(0)"><img src="images/b1.jpg" alt="image01" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b2.jpg" alt="image02" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b3.jpg" alt="image03" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b4.jpg" alt="image04" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b5.jpg" alt="image05" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b6.jpg" alt="image06" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b7.jpg" alt="image07" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b8.jpg" alt="image08" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b9.jpg" alt="image09" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b10.jpg" alt="image10" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b11.jpg" alt="image11" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b12.jpg" alt="image12" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b13.jpg" alt="image13" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b14.jpg" alt="image14" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b15.jpg" alt="image15" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b16.jpg" alt="image16" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b17.jpg" alt="image17" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b18.jpg" alt="image18" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b19.jpg" alt="image19" /></a></li>
					<li><a href="javascript:void(0)"><img src="images/b20.jpg" alt="image20" /></a></li>
				</ul>
			
			</div>
		</div>
	
	<footer>
		<p>技术支持***，宁波海丝院版权所有</p>
	</footer>
	
	<script type="text/javascript" src="js/jquerypp.custom.js"></script>
	<script type="text/javascript" src="js/jquery.elastislide.js"></script>
	<script type="text/javascript">
		$( '#carousel' ).elastislide();
		
	</script>
  </body>
</html>
