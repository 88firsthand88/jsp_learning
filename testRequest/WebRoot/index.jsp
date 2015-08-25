<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <h1>request测试</h1>
    <form action="get.jsp" method="post">
    	<table>
    		<tr><td>用户名：</td><td><input type="text" name="username"></td></tr>
    		<tr>
    			<td>    			
    				<input type="checkbox" name="faviout" value="music">音乐
    				<input type="checkbox" name="faviout" value="basketball">篮球
    				<input type="checkbox" name="faviout" value="game">游戏
    				<input type="checkbox" name="faviout" value="run">跑步
    			</td>
    		</tr>
    		<tr>
    			<td><input type="submit"></td>
    		</tr>
    	</table>
    </form>
    <a href="get.jsp?username=hello">url传递参数</a>
  </body>
</html>
