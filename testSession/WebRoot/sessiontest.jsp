<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sessiontest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
    <h1>session内置对象</h1>
    <%
		SimpleDateFormat form= new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
		long ss = session.getCreationTime();
		session.setAttribute("username", "first");
		session.setAttribute("password", "123456");
		session.setAttribute("faviout", "basket");
     %>
     session创建时间是：<%=form.format(ss) %><br>
     session的ID是:<%=session.getId() %><br>
            用户名是:<%=session.getAttribute("username") %>
</html>
