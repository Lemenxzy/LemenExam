<%@page import="com.bufoon.entity.Subject"%>
<%@page import="com.bufoon.util.Util"%>
<%@page import="com.bufoon.service.role.GetUser"%>
<%@page import="javax.annotation.Resource"%>
<%@page import="com.bufoon.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common/taglib.jsp"%>
<!DOCTYPE>
<html>
<head>
<%@include file="common/public.jsp"%>
	<title>开始答题</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0,user-scalable=no">
    <title>2016宁波“万里杯”中东欧国家知识竞赛</title>

        <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="http://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  <style type="text/css">
      body{ font-family:'微软雅黑';font-size:16px;color:#fff;}
      .clear{clear: both;}
      .tittle{color:#fefefe;text-align: center;font-size:1.5vw;font-weight:600;background:#3399CC;padding-top:20px;padding-bottom:20px;margin:0;}
      .time{border-bottom:10px dotted #fff;background:#0CB1F5;padding-top:20px;}
      .timeover{width:60%;margin:0px auto;}
      .exam_tit{text-align: center;}
      .t_d{height: 120px;float: left;width:8%;margin-top:2%;}
      .min{height:120px;background:#fefefe;width:42%;float: left;margin:2%;text-align: center;border-radius:20px;}
      .bot{width: 50%;background:#CBDEF3;min-height:26%;margin:30%;border-radius:70px;}
      .min span{color:#0CB1F5;line-height:120px;font-size:5vw;}
      .exma_num{border:1px solid #ccc;margin-top:40px;color:#333;border-radius:10px;}
      .e_num{text-align: center;line-height:40px;font-size:18px;border-bottom:1px solid #ccc;}
      .e_nub{background:#FF4747;border-radius:6px;color: #fefefe;padding:4px;}
      .e_tit{padding:10px;padding-bottom:0px;text-align: center;}
      .slecet{color:#333;margin-top:50px;}
      .slecet span{margin-left: 10px;}
      .img_box{padding:10px;padding-bottom:0;}
      .next_box{text-align: center;margin:50px auto;}
      .t_img{margin:0 auto;border-radius:20px;border:6px solid #FF4747;}
      .next{background-color: #FF4747;margin: 0 auto;display: inherit;width: 30%;border: 6px solid #fefefe;padding-top: 10px;padding-bottom: 10px;text-align: center;border-radius: 100px;font-size: 1.3em;color: #fefefe;font-weight: 600;transition:0.4s ease all;}
      .next:hover{ color:#333;text-decoration: none;transition:0.4s ease all;}
      .great{text-align: center;padding:10%;color:#FF4747}
      @media screen and (max-width:992px){.user{font-size:2.5vw} .tittle{font-size:2.5vw}.min span{font-size:7vw;}}
      @media screen and (max-width:768px){.user{font-size:3vw} .tittle{font-size:3vw}.bot{min-height:25%;margin-top:25px; }.min span{font-size:9vw;}}
      @media screen and (max-width:500px){.user{font-size:4.5vw} .tittle{font-size:4.5vw}.bot{min-height:10%;margin-top:32px;}.min span{font-size:9.5vw;}.next{width:45%;font-size:1em;}}

  </style>
</head>

<body data-id="${sessionScope.userId}">
	<%
		Integer userid = (Integer) session.getAttribute("userId");
		User userbeen = GetUser.findpower(userid);
		Integer power = userbeen.getPower() + 1;
		pageContext.setAttribute("power", power);
		String exma = "1#1";
		if (power > 0) {
			if (power == 3) {
				exma = userbeen.getExam1();
			} else if (power == 2) {
				exma = userbeen.getExam2();
			} else if ((power == 1)) {
				exma = userbeen.getExam3();
			}
		}
		Cookie cookies[] = request.getCookies();
		if (null != cookies) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie = cookies[i];
				if (cookie.getName().equals("iidd")) {
					String cookieValue = cookie.getValue();
					Integer iidd = Integer.parseInt(cookieValue);
					pageContext.setAttribute("iidd", iidd);
					Integer nbone = Util.StringtoInt(exma)[iidd];
					Subject testbeen = GetUser.findContents(nbone);
					pageContext.setAttribute("testbeen", testbeen);
				}
			}
		}
	%>
	<h1 class="tittle">开始答题</h1>
    <div class="time"id="timeover">
      
            
      
    </div>

    <div class="container">
    	<div class="row">
        <div class="col-md-1">
        </div>
      	<div class="col-md-10">
      	<c:if test="${iidd<50}">
			<div id="list" data-poweid="${power}">
             <div class="exma_num">
                <p class="e_num">答题数 <span class="e_nub" id="title_id">${iidd+1}</span></p>
                <p class="e_tit">${testbeen.title}</p>
                <div class="img_box"><img src="" class="img-responsive t_img"></div>
             </div>
             <div class="slecet">
              	<div id="selete"></div>
             </div>
             <div class="next_box"><a href="javascript:void(0)" onclick="next()" class="next">下一题</a></div>
        	</div>
        </c:if>
        <c:if test="${iidd==50}">
			<p class="great">恭喜，您所有的题目已完成</p>
			<a href="javascript:void(0)" onclick="result()" class="next">查看结果</a>
		</c:if>
        </div>
    		<div class="col-md-1">
    		</div>
    	</div>
  </div>

	<script type="text/javascript">
		$(function() {
			var data = [];
			var anser1 = "${testbeen.optionA}";
			var anser2 = "${testbeen.optionB}";
			var anser3 = "${testbeen.optionC}";
			var anser4 = "${testbeen.optionD}";
			if (anser1 != "")
				data.push(anser1);
			if (anser2 != "")
				data.push(anser2);
			if (anser3 != "")
				data.push(anser3);
			if (anser4 != "")
				data.push(anser4);
			var html = '';
			for (var i = 0; i < data.length; i++) {
				html += "<p><label><input name='Fruit' type='radio' value="
						+ "'" + (i + 1) + "'" + "/>" + "<span>" +data[i]+"</span>" + "</label>";
			}
			$("#selete").append(html);
		});

		var a = sessionStorage.getItem("opdata");
		var arr = a.split(",");
		function next() {
			var powerid = $("#list").data("poweid");
			var i = $("#title_id").text();
			var list = $('input:radio[name="Fruit"]:checked').val();
			list == null ? list = "no" : list;
			addcookie("iidd", i, 0);
			var userid = $("body").data("id");
			$.ajax({
				type : "post",
				url : basePath + "temeplet/start.jsp",
				data : {
					"userid" : userid,
					"i" : i
				},
				success : function(data) {
					data = data.trim();
					$("#list").html(data);
				}
			});

			arr.push("'" + i + "'" + ":" + "'" + list + "'");

			if (window.sessionStorage) {
				sessionStorage.setItem("opdata", arr);
			}
		};

		var maxtime;
		maxtime = getcookie("time");
		var mintime = 20 * 60;
		function CountDown() {
			if (maxtime >= 0) {
				minutes = Math.floor(maxtime / 60);
				seconds = Math.floor(maxtime % 60);
				minutes = minutes >= 10 ? minutes : '0' + minutes;
				seconds = seconds >= 10 ? seconds : '0' + seconds;
				showtime = mintime - maxtime;
				msg = "<div class=\"timeover\">"+
				"<div class=\"min\">"+
				"<span>"+minutes+"分</span>"+
				"</div>"+
				"<div class=\"t_d\">"+
				"<div class=\"bot\"></div>"+
				"<div class=\"bot\"></div>"+
				"</div>"+
				"<div class=\"min\">"+
				"<span>"+seconds+"</span>"+
				"</div>"+
				"<div class=\"clear\"></div>"+
				"</div>"+
			    "<p class=\"exam_tit\"><span id='showtime'>已用"+showtime+"秒</span></p>";
				document.getElementById('timeover').innerHTML = msg;
				if (maxtime == 5 * 60) {
					alert('注意，还有5分钟!');
				}
				--maxtime;
				addcookie("time", maxtime, 0);
			} else {
				
				clearInterval(timer);
				result();
				
				return;
			}
			return showtime;

		}
		timer = setInterval("CountDown()", 1000);

		function addcookie(name, value, expireHours) {
			var cookieString = name + "=" + escape(value);
			//判断是否设置过期时间
			if (expireHours > 0) {
				var date = new Date();
				date.setTime(date.getTime + expireHours * 3600 * 1000);
				cookieString = cookieString + "; expire=" + date.toGMTString();
			}
			document.cookie = cookieString;
		}

		function getcookie(name) {
			var strcookie = document.cookie;
			var arrcookie = strcookie.split("; ");
			for (var i = 0; i < arrcookie.length; i++) {
				var arr = arrcookie[i].split("=");
				if (arr[0] == name)
					return arr[1];
			}
			return "";
		}

		function result() {
			var username = "${sessionScope.username}";
			var str2 = sessionStorage.getItem("opdata")
			var awser2 = "";
			if (str2 != null && str2 != "") {
				awser2 = str2.substring(1, str2.length);
			}

			var awser = "{" + awser2 + "}";
			alert(0);
			
			var time = $("#showtime").text();
			alert(time);
			alert(awser);
			$.ajax({
				type : "post",
				data : {
					"username" : username,
					"answers" : awser,
					"time" : time
				},
				url : basePath + "user/recordscord.action",
				success : function(data) {
					alert(data);
				}
			})

			sessionStorage.removeItem("opdata");
		}
	</script>
</body>
</html>
