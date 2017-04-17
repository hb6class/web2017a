<%@page import="com.hb.model.Guest04DTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/frame.css"/>
	<link rel="stylesheet" type="text/css" href="../css/table.css"/>
	<style>
		
	</style>
</head>
<%
	List<Guest04DTO> list=(List)request.getAttribute("alist");
%>
<body>
	<div id="header">
		<h1>한빛교육센터</h1>
	</div>
	<div id="menu">
		<ul>
			<li><a href="#">menu1</a></li>
			<li><a href="#">menu2</a></li>
			<li><a href="#">menu3</a></li>
			<li><a href="#">menu4</a></li>
		</ul>
	</div>
	<div id="content">
		<h1>목록</h1>
		<div id="table">
			<div class="row">
				<span class="col1">사번</span>
				<span class="col2">이름</span>
				<span class="col3">제목</span>
				<span class="col4">날짜</span>
				<span class="col5">금액</span>
			</div>
			<!-- 리스트 시작 -->
			<%for(Guest04DTO bean:list){ %>
			<a href="#">
			<div class="row">
				<span class="col1"><%=bean.getSabun() %></span>
				<span class="col2"><%=bean.getName() %></span>
				<span class="col3"><%=bean.getSub() %></span>
				<span class="col4"><%=bean.getNalja() %></span>
				<span class="col5"><%=bean.getPay() %></span>
			</div>
			</a>
			<%} %>
			<!-- 리스트 종료 -->
		</div>
	</div>
	<div id="footer">
		<p>Copyright (c) 2017 한빛교육센터 All rights reserved.</p>
	</div>
</body>
</html>








