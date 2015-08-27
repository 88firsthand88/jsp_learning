<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testRequest.jsp' starting page</title>
    
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
  	<%request.setCharacterEncoding("utf-8");%>//表单传递参数可以解决中文乱码问题而url传递参数不能解决只能修改tomcat
    <h1>测试request和response的区别</h1>
         用户名：<%=request.getParameter("username")%><br>
         喜好：<%
    	String[] val = request.getParameterValues("faviout");
    	if (val != null) {
    		for (int i = 0; i < val.length; i++) {
    			out.print(val[i]);
    			out.print("&nbsp&nbsp&nbsp");
    		}
    	}
    %><br>
    ip地址：<%=request.getRemoteAddr()%><br>    
    字符编码方式：<%=request.getCharacterEncoding()%>
  </body>
</html>
