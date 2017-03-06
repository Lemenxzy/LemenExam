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
		.bc p span{margin-top:6px;display:block;line-height: 2em;}
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
	         		<li class="active"><a href="javascript:void(0)">大赛介绍</a></li>
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
	
	 <div class="container contentbody">
	   <div class="row" >
	   	  <div class="col-sm-1 col-xs-1" ></div>
	      <div class="col-sm-10 col-xs-10 content bc"  style="background:#fff;color:#333;">
		  	<h2>一、活动背景</h2>
		  	<p><span>
			中东欧国家地处“一带一路”沿线的重要区域，占“一带一路”沿线国家数量的四分之一，
			被称为中欧经济合作的桥头堡。随着我国“一带一路”战略的深入推进，与“一带一路”沿
			线重要区域的中东国家的交流将更加紧密，合作必将提高到新水平。近年来，宁波依托港
			口区位优势和开放优势，通过举办中国—东欧国家合作经贸促进部长级会议、中国—中东欧
			国家投资贸易博览会、中东欧国家特色产品展和出台《关于加强与中东欧国家全面合作的
			若干意见》、《宁波市中东欧经贸合作补助资金管理办法》，以及开展“百团千人游中东欧”
			等系列战略举措，积极深入推进中国—中东欧国家合作，抢抓国家“一带一路”战略机遇，努力
			把宁波打造成为中国与中东欧国家双向投资合作的首选之地、中东欧商品进入中国市场的首选
			之地、中国与中东欧国家人文交流的首选之地。
			</span></p>
			<p><span>
			2015年11月24-25日，在苏州举行的第四次中国—中东欧国家领导人会议上，中国同中东欧1
			6国共同发表《中国—中东欧国家合作中期规划》和《中国—中东欧国家合作苏州纲要》，确定
			2016年6月8日-12日在中国宁波召开第二次中国—中东欧国家合作经贸促进部长级会议和举办第二
			届中国—中东欧国家投资贸易博览会。本次中东欧博览会以《中国-中东欧国家合作苏州纲要》为指导
			，以“深化合作、互利共赢”为主题，通过举办会议论坛、投资洽谈、贸易展览、人文交流等系列活动
			，进一步打造中国与中东欧国家全面合作和“一带一路”建设的重要平台，为我国经贸事业发展作出新的贡献。
			</span></p>
			<p><span>
			为了营造中国—中东欧国家的良好氛围，根据中国-中东欧国家投资贸易博览会组委会的统一安
			排和部署，通过举办中东欧国家知识大赛活动，在宁波市民中普及中东欧国家的政治、经济、
			文化等相关知识，增加对中东欧国家的了解，提升中国—中东欧国家经贸合作的民众基础。
			</span></p>
			<h2>二、大赛名称</h2>
			<p>2016宁波“万里杯”中东欧国家知识大赛</p>
			<h2>三、大赛官网</h2>
			<p><a href="${ basePath}">www.baidu.com</a></p>
			<h2>四、大赛主题</h2>
			<p>分享梦想，共赢未来</p>
			<h2>五、组织机构</h2>
			<p>
			<span>本次中东欧国家知识大赛活动作为第二届中国—中东欧国家投资贸易博览会系列活动之人文交流板块中重要组成部分，其具体主承办单位及媒体支持单位如下：</span><br />
			<span>主办单位：浙江万里学院</span><br />
			<span>北京外国语大学欧洲语言文化学院</span><br />
			<span>承办单位：宁波海上丝绸之路研究院</span><br />
			<span>赞助企业：（待完善）</span><br />
			<span>媒体支持单位：宁波日报报业集团</span>
			</p>
			<h2>六、大赛工作领导小组</h2>
			<p>
				<span>组  长：张幸迩</span><br />
			<span>副组长：闫国庆、赵刚</span><br />
			<span>成  员：邓小芳、徐侠民、傅婷婷、（补充宁波市天一公证处）</span><br />
			<span>下设题库组、文宣策划组、网络技术组。</span>
			</p>
			
			<h2>七、大赛公正</h2>
			<p>本次中东欧国家知识大赛活动将由宁波市天一公正处进行全程公证。</p>
		  </div>
	      <div class="col-sm-1 col-xs-1" ></div>
	   </div>
	 </div>
	 
	 <footer>
		<p>技术支持***，宁波海丝院版权所有</p>
	</footer>
	 
  </body>
</html>
