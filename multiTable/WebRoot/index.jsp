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
    <h1>九九乘法表</h1>
    <%!
    	String s="";
    	String multi(){
    		for(int i=1;i<=9;i++){
    			for(int j=1;j<=i;j++){
    				s+=i+"*"+j+"="+(i*j)+"&nbsp&nbsp&nbsp&nbsp";
    			}
    			s+="<br>";
    		} 
    		return s;
    	}//使用表达式实现
    	void multi1(JspWriter out)throws Exception{
    		for(int i=1;i<=9;i++){
    			for(int j=1;j<=i;j++){
    				s+=i+"*"+j+"="+(i*j)+"    ";
    			}
    			out.println(s);
    		} 
    		out.println();
    	}//使用jsp脚本实现
     %>
     <%
     	multi();
      %>
     <%=multi()%>
  </body>
</html>
















