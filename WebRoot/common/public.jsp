<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
int port = request.getServerPort();
String path = request.getContextPath();
String basePath = "";
if(port == 80){
	basePath = request.getScheme()+"://"+request.getServerName()+path+"/";
}else{
	basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
}
request.setAttribute("basePath", basePath);
%>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript">var basePath = "${basePath}";</script>