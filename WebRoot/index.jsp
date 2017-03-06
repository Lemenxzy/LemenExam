<%@page import="com.bufoon.util.HibernateUtils"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common/taglib.jsp" %>
<!DOCTYPE>
<html>
  <head>
    <%@include file="common/public.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0,user-scalable=no">
    <title>2016宁波“万里杯”中东欧国家知识竞赛</title>
    <link href="http://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  	<style type="text/css">
      body{background:#0CB1F5; font-family:'微软雅黑';font-size:16px;position:relative;}
      .tittle{color:#fefefe;text-align: center;font-size:16px;font-weight:600;background:#3399CC;padding-top:15px;padding-bottom:15px;margin:0;}
      .logo{margin:0 auto;}
      .show_img{margin-top:80px;}
      .user_box{margin-top: 80px;margin-bottom:190px;}
      .user{display:inline-block;width:40%;border: 6px solid #333;padding-top:10px;padding-bottom:10px;text-align:center;border-radius:10px;font-size:2em;color:#444;font-weight:600;transition:0.2s ease all;}
      .user:hover{color:#fefefe;text-decoration: none;border-color:#fefefe;transition:0.2s ease all;}
      .login{float:left;background-color:#FF4747;}
      .reg{float: right;background-color:#FFF601;}
      .w_power{color:#FF4747;font-size:20px;}
      .welcom{text-align: center;margin-bottom: 50px;color:#fefefe;font-weight:600;font-size:18px;}
      .foot{width: 100%;background:#3399CC;color:#fff;text-align:center;height:60px;position: absolute;bottom:0;}
      .foot p{line-height: 60px;font-size:16px;padding:0;margin:0;}
      .loginout{display:inline-block;margin-left:10px;color:#FF4747;text-decoration:underline;}
      @media screen and (max-width:992px){.user{font-size:2.5vw}}
      @media screen and (max-width:768px){.user{font-size:3vw}
      @media screen and (max-width:500px){.user{font-size:4.5vw}.welcom{margin-bottom:20px;font-size:4.5vw}}
  	</style>

  </head>
  <body>
  <h1 class="tittle">2016宁波“万里杯”中东欧国家知识竞赛</h1>
  <div class="container">
    	<div class="row">
        <div class="col-md-1">
        </div>
    		<div class="col-md-10">
          <div class="show_img">
            <img src="images/index_05.png" class="img-responsive logo" />
    		  </div>
          <div>
            <div class="row">
              <div class="col-md-2">
              </div>
              <div class="col-md-8 user_box">
                <c:if test="${empty sessionScope.name}">
					<a href="${basePath}login.jsp" class="login user">登录</a>
                	<a href="${basePath}reg.jsp" class="reg user">注册</a>
				</c:if>
                  <c:if test="${not empty sessionScope.name}">
				  	 <p class="welcom">${sessionScope.name};欢迎您！您还有 <span class="w_power">${sessionScope.power}</span> 次答题机会
				  	 	<a href="${basePath}/server/loginout.jsp" class="loginout">注销</a>
				  	 </p>
					 <a href="${basePath}mycont.jsp" class="login user">我的排行</a>
                	<a href="${basePath}needknow.jsp" class="reg user">答题开始</a>
				  </c:if>
               
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

    <div class="foot">
      <p>技术支持：&copy;浙江万里学院电子信息学院</p>
    </div>
  
  </body>
</html>
