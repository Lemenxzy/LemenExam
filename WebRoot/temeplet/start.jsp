
<%@page import="com.bufoon.entity.Subject"%>
<%@page import="com.bufoon.util.Util"%>
<%@page import="com.bufoon.entity.User"%>
<%@page import="com.bufoon.service.role.GetUser"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>
   	<%
   		String userid = request.getParameter("userid");
   		String i = request.getParameter("i");
		User userbeen = GetUser.findpower(Integer.parseInt(userid));
   		Integer power = userbeen.getPower()+1;
   		String exma = null;
   		if(power>0){
   			
	   		if(power==3){
	   			exma = userbeen.getExam1();
	   		}else if(power==2){
	   			exma = userbeen.getExam2();
	   		}else if((power==1)){
	   			exma = userbeen.getExam3();
	   		}
	   		
   		}
   		Integer nbone = Util.StringtoInt(exma)[Integer.parseInt(i)];
   		Subject testbeen = GetUser.findContents(nbone);
   		pageContext.setAttribute("testbeen", testbeen);
   		pageContext.setAttribute("i", i);
   	%>
   
	<c:if test="${i<50}">
           <div class="exma_num">
              <p class="e_num">答题数 <span class="e_nub" id="title_id">${i+1}</span></p>
              <p class="e_tit">${testbeen.title}</p>
              <div class="img_box"><img src="${testbeen.picurl}" class="img-responsive t_img"></div>
           </div>
           <div class="slecet">
            	<div id="selete"></div>
           </div>
           <div class="next_box"><a href="javascript:void(0)" onclick="next()" class="next">下一题</a></div>
   </c:if>
	
	<c:if test="${i==50}">
			<p class="great">恭喜，您所有的题目已完成</p>
			<a href="javascript:void(0)" onclick="result()" class="next">查看结果</a>
	</c:if>
	
	<script type="text/javascript">
		$(function () {
			  var data = [];
			  var anser1 = "${testbeen.optionA}";
			  var anser2 = "${testbeen.optionB}";
			  var anser3 = "${testbeen.optionC}";
			  var anser4 = "${testbeen.optionD}";
			  if(anser1!="")data.push(anser1);
			  if(anser2!="")data.push(anser2);
			  if(anser3!="")data.push(anser3);
			  if(anser4!="")data.push(anser4);
		      var html = '';
		      for (var i = 0; i < data.length; i ++) {
		        html += "<p><label><input name='Fruit' type='radio' value="+"'"+(i+1)+"'"+"/>" + data[i] + "</label>";
		      }
		      $("#selete").append(html);
		    });
	
	</script>
	

	
