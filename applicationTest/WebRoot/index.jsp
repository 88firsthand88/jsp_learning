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
    <h1>application内置对象</h1><hr>
    <%
    	application.setAttribute("name", "lili");
    	application.setAttribute("password", "1234");
    	application.setAttribute("faviout", "basketball");
    	
     %>
     	用户名：<%=application.getAttribute("name") %><br>
     <%
     	Enumeration value = application.getAttributeNames();
     	while(value.hasMoreElements()){
     		out.println(value.nextElement()+"<br>");
     	}
      %>
      <br>
      服务器信息：<%=application.getServerInfo() %>
  </body>
</html>
