<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
  <head>
    <%@include file="common/public.jsp" %>
    <title>注册页</title>
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
  	<div class="page-container">
            <h1>register</h1>
            <form action="" method="post">
                <input type="text" class="username" id="name" placeholder="姓名" onblur="namea(this)">
                <p><span class="tip" id="tip1"></span></p>
                <input type="text" class="username" id="idcard" placeholder="身份证号" onblur="idcarda(this)">
                <p><span class="tip" id="tip2"></span></p>
                <input type="text" class="username" id="tel" placeholder="手机号码" onblur="tela(this)">
                <p><span class="tip" id="tip3"></span></p>
                <input type="password"  class="password" id="password" placeholder="密码" onblur="passworda(this)">
                <p><span class="tip" id="tip4"></span></p>
                <input type="password" class="password" id="agpassword" placeholder="确认密码" onblur="agpassworda(this)">
                <p><span class="tip" id="tip5"></span></p>
                <button type="submit" onclick="reg(this)">注册</button>
                 <p><span class="tip" id="tip6"></span></p>
            </form>
    </div>
   	
   	<script type="text/javascript">
   		var flag1 = false;
   		var flag2 = false;
   		var flag3 = false;
   		var flag4 = false;
   		var flag5 = false;
	   	function namea(argument) {
	        var name = $("#name").val();
	        var fname =  isProperLen(name);
	        if (fname) {
	             $("#tip1").html("OK!");
	             flag1 = true;
	         }else{
	             $("#tip1").html("长度不符合要求！");
	         }
	    }
	    function idcarda(){
	        var idtext = $("#idcard").val();
	        var iflag = IdentityCodeValid(idtext);
	        if(iflag){
	            $.ajax({
	               type:"post",
	               url:basePath+"user/isregister.action",
	               data:{"username":idtext},
	               success:function(data){
	                    data=data.trim();
	                    if (data=="success") {
	                        $("#tip2").html("OK!");
	                        flag2 = true;
	                    }else if (data=="fail") {
	                        $("#tip2").html("已被注册!");
	                    }else{
	                        $("#tip2").html("空！");
	                    }
	               }
	            })
	        }else{
	            $("#tip2").html("身份证格式错误!");
	        }
	    }
	    function tela(){
	        var tel = $("#tel").val();
	        var tflag = isPhone(tel);
	        if (tflag) {
	            $("#tip3").html("OK!");
	            flag3 = true;
	        }else{
	            $("#tip3").html("号码格式不正确!");
	        }
	    }
	
	    function passworda(){
	
	        var pas  = $("#password").val();
	        var pflag = isNotEmpty(pas);
	        if (pflag) {
	             $("#tip4").html("OK!");
	             flag4 = true;
	        }else{
	             $("#tip4").html("密码不能为空");
	        }
	    }
	
	    function agpassworda(){
	        var agps = $("#agpassword").val();
	        var pas2  = $("#password").val();
	        if (pas2==agps && isNotEmpty(agps)) {
	            $("#tip5").html("OK!");
	            flag5 = true;
	        }else{
	            $("#tip5").html("两次密码不一致!");
	        }
	    }
	   	
  		function reg(obj){
  			var w = $(window).width();
  			var tel = $("#tel").val();
  			var password = $("#password").val();
  			var idcard = $("#idcard").val();
  			var name = $("#name").val();
  			if(flag1 && flag2 && flag3 && flag4 && flag5){
  				$.ajax({
  					type:"post",
  					url:basePath+"user/register.action",
  					data:{"username":idcard,"password":password,"tel":tel,"name":name},
  					success:function(data){
  						data=data.trim();
  						if(data=="success"){
  							window.location.href = basePath+"login.jsp";
  						}else if(data=="fail"){
  							$("#tip6").html("注册失败");
  			                return false
  						}else{
  							$("#tip6").html("请确认以上信息准确无误！");
  			                return false
  						}
  					}
  				});
  			}else{
  				
  				$("#tip6").html("请确认以上信息准确无误！");
                return false
  			}
  		}
  	
  	
  	</script>	
   	
  </body>
</html>
