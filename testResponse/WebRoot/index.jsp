<%@page import="com.sun.xml.internal.ws.client.SenderException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme	()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	out.println("hi");
	out.println("<hr>");
	//out.flush();
	response.setContentType("text/html; charset=utf-8");//设置MIME类型
	PrintWriter pw = response.getWriter();
	pw.println("这是response对象打印");
	pw.println("<br>");
	response.sendRedirect("Test.jsp");//请求重定向
 %>
