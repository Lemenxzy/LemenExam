<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	session.removeAttribute("user");
	session.removeAttribute("name");
	session.removeAttribute("power");
	session.removeAttribute("userId");
	int pont = request.getServerPort();
	String path = request.getContextPath();
	String basePath = "";
	if(pont==80){
		basePath = request.getScheme()+"://"+request.getServerName()+path;
	}else{
		basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	}
	response.sendRedirect(basePath);//重定向
%>