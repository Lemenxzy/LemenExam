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
		.bc h2{text-align:center;}
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
  
  <body  onselectstart="return false">
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
			         <li class="active"><a href="javascript:void(0)">中东欧知识点</a></li>
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
	

	 <div class="container contentbody">
	   <div class="row" >
	   	  <div class="col-sm-1 col-xs-1" ></div>
	      <div class="col-sm-10 col-xs-10 content bc" style="background:#fff;color:#333;">
		  	<h2>中东欧知识点</h2>
		  	<p>
		  	<span>
				1.dsadsadasdas
			</span><br />
			<span>
				2.dsadsadasdas
			</span><br />
			<span>
				3.dsadsadasdas
			</span><br />
			<span>
				4.dsadsadasdas
			</span><br />
			<span>
				5.dsadsadasdas
			</span><br />
			<span>
				6.dsadsadasdas
			</span><br />
			<span>
				7.dsadsadasdas
			</span><br />
			<span>
				8.dsadsadasdas
			</span><br />
			
			</p>
			
		  </div>
	      <div class="col-sm-1 col-xs-1" ></div>
	   </div>
	 </div>
	 
	 <footer>
		<p>技术支持***，宁波海丝院版权所有</p>
	</footer>
	 <script type=text/javascript>
		document.oncontextmenu=new Function('event.returnValue=false;');
		document.onselectstart=new Function('event.returnValue=false;');
  	</script>
  </body>
</html>
