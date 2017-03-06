<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common/taglib.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <title>答题须知</title>
	<%@include file="common/public.jsp" %>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0,user-scalable=no">
    <title>2016宁波“万里杯”中东欧国家知识竞赛</title>
    <link href="http://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	  <style type="text/css">
	      body{background:#0CB1F5; font-family:'微软雅黑';font-size:16px;color:#fff;}
	      .tittle{color:#fefefe;text-align: center;font-size:1.5vw;font-weight:600;background:#3399CC;padding-top:20px;padding-bottom:20px;margin:0;}
	      .show_img{margin-top:50px;background:url("images/blackbord.png") no-repeat;background-size:100% 100%;padding: 10%}
	      .user_box{margin-top: 50px;margin-bottom:100px;}
	      .user{display:inline-block;width:40%;border: 6px solid #fefefe;padding-top:10px;padding-bottom:10px;text-align:center;border-radius:10px;font-size:2em;color:#fefefe;font-weight:600;transition:0.2s ease all;}
	     
	      .login{float:left;background-color:#FF4747;}
	      .login:hover{color:#FF4747;background:#fefefe;border-color: #FF4747;transition:0.2s ease all;}
	      .reg{float: right;background-color:#E0DA49;}
	       .reg:hover{color:#E0DA49;background:#fefefe;border-color: #E0DA49;transition:0.2s ease all;}
	      .w_power{color:#FF4747;font-size:20px;}
	      .welcom{text-align: center;margin-bottom: 50px;color:#fefefe;font-weight:600;font-size:18px;}
	      .foot{width: 100%;background:#3399CC;color:#fff;text-align:center;height:60px;position: fixed;bottom:0;}
	      .foot p{line-height: 60px;font-size:16px;padding:0;margin:0;}
	      @media screen and (max-width:992px){.user{font-size:2.5vw} .tittle{font-size:2.5vw}}
	      @media screen and (max-width:768px){.user{font-size:3vw} .tittle{font-size:3vw}}
	      @media screen and (max-width:500px){.user{font-size:4.5vw} .tittle{font-size:4.5vw}}
	  </style>
  </head>
  
  <body data-id = "${sessionScope.userId }">
	  <h1 class="tittle">答题须知</h1>
	    <div class="container">
	    	<div class="row">
	        <div class="col-md-1">
	        </div>
	      	<div class="col-md-10">
	              <div class="show_img">
	                  <h1>答题规则</h1>
	                  <p>1、考试作答时，只能点击下一题，不能回到上一题做修改。若不作答，视为本题为0分，请各位三思而后行。
	                  </p>
	                  <p>2、每次点击开始答题，则会用掉一次答题机会。中途只要退出答题页面，视为为放弃一次答题机会。</p>
	                  <p>3、考试限时20分钟，若答题者分数相同，按照答题时间最短者胜出。</p>
	                  <p>4、本次活动的解释权在法律规定的范围内归宁波海上丝绸之路研究院所有。</p>
	              </div>
	              <div>
	                <div class="row">
	                  <div class="col-md-2">
	                  </div>
	                  <div class="col-md-8 user_box">
	                    <a href="javascript:void(0)" class="login user" onclick="agment()">开始答题</a>
	                    <a href="${basePath}index.jsp" class="reg user">我在等等</a>
	                  </div>
	                  <div class="col-md-2">
	                  </div>
	                </div>
	              </div>
	        </div>
	    		<div class="col-md-1">
	    		</div>
	    	</div>
	  </div>

  		<script type="text/javascript">
  			function agment(){
  				addcookie("time",20*60,0);
  				addcookie("iidd",0,0);
  				sessionStorage.setItem("opdata","");
  				var userid  =  $("body").data("id");
  				$.ajax({
  					type:"post",
  					url:basePath+"user/examstart.action",
  					data:{"userid":userid},
  					success:function(data){
  						data  = data.trim();
  						if(data=="success"){
  							window.location.href = basePath + "start.jsp"
  						}else if(data=="null"){
  							alert("您没有了答题机会");
  						}else if(data == "fail"){
  							alert("服务器错误")
  						}else{
  							alert("请登录");
  						}
  					}
  				})
  			}
  			
  			function addcookie(name,value,expireHours){
  				var cookieString=name+"="+escape(value);
  				//判断是否设置过期时间
  				if(expireHours>0){
  				var date=new Date();
  				date.setTime(date.getTime+expireHours*3600*1000);
  				cookieString=cookieString+"; expire="+date.toGMTString();
  				}
  				document.cookie=cookieString;
  			}
  		</script>
  </body>
</html>
