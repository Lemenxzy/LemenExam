<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
  <head>
    <%@include file="common/public.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0,user-scalable=no">
    <title>2016宁波“万里杯”中东欧国家知识竞赛</title>

  <style type="text/css">
      body{background:#0CB1F5; font-family:'微软雅黑';font-size:16px;color:#fff;padding:0;margin:0;}
      .tittle{color:#fefefe;text-align: center;font-size:1.5vw;font-weight:600;background:#3399CC;padding-top:20px;padding-bottom:20px;margin:0;}
      .logo_box{background:#46566D;text-align: center;}
      .t_img{margin: 0 auto;display: inline-block;margin-top: 40px;margin-bottom: 40px;}
      .container{text-align:center;margin-top:60px;}
      .massage p{border:4px solid #fff;display:inline-block;width: 50%;padding:2.5%;background: #46566D;border-radius:8px;font-size:18px;}
  </style>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body data-id = "${sessionScope.userId}">
  
  	<h1 class="tittle">我的排行榜</h1>
    <div class="logo_box">
        <div class="b_box"><img src="images/21.png" width="130px" class="t_img"></div>
    </div>
    <div class="container">
    	   <div class="massage">
              <p>您的最高得分：98</p>
              <p>您的排名：1</p>
         </div>
   </div>
  
  <script type="text/javascript">
   $(function(){
	   var userid = $("body").data("id");
	   $.ajax({
		   type:"post",
		   url:"user/top.action",
		   data:{"userid":userid},
		   success:function(data){
			   data = data.trim();
			   $("#show").html(data);
		   }
	   })
   });
 	
 </script>
 
  </body>
</html>
