<%@page import="com.bufoon.util.Util"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
  <head>
    <%@include file="common/public.jsp" %>
    <title>MyHtml.html</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/supersized.css">
    <link rel="stylesheet" href="assets/css/style.css">
	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="assets/js/supersized.3.2.7.min.js"></script>
    <script src="assets/js/supersized-init.js"></script>
    <script src="assets/js/scripts.js"></script>
    <script src="assets/js/idcard.js"></script>
  </head>
  
  <body>
  		<%
		String username = (String)session.getAttribute("userId");
			if(Util.isnotEmpty(username)){
				response.sendRedirect(basePath+"index.jsp");//重定向
			}
		%>	
  
  		<div class="page-container">
            <h1>Login</h1>
            <form action="" method="post">
                <input type="text" name="username" class="username" id="username" placeholder="身份证号" onblur="idcard(this)">
                <p><span class="tip" id="tip1">22222</span></p>
                <input type="password" id="password" name="password" class="password" placeholder="密码">
                <p><span class="tip" id="tip2">22222</span></p>
                <button type="button" onclick="login(this)">登录</button>
                <p><a href="${basePath}/reg.jsp" class="reg">立即注册？</a></p>
            </form>
        </div>
    	
    	<script type="text/javascript">
    	var flag = false;
    	function idcard(){
    		var username = $("#username").val();
            var flag2 = IdentityCodeValid(username);
            if(flag2){
            	flag=true;
                $("#tip1").html("OK!");
            }else{
                $("#tip1").html("身份证格式错误!");
            }
        }
  		function login(obj){
  			var username = $("#username").val();
  			var password = $("#password").val();
  			if(flag){
  				$.ajax({
  	  				type:"post",
  	  				url:basePath+"user/login.action",
  	  				data:{"username":username,"password":password},
  	  				success:function(data){
  	  					data = data.trim();
  	  					if(data=="success"){
  	  						window.location.href= basePath+ "index.jsp";
  	  					}else if(data=="fail"){
  	  						$("#tip2").html("用户密码不正确!");
  	  					}else{
  	  						$("#tip2").html("用户密码不能为空!");
  	  					}
  	  				}
  	  			});
  			}else{
  				$("#tip1").html("身份证格式错误!");
  			}
  		}
  </script>
  </body>
</html>
