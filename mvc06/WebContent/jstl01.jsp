<%@page import="java.util.ArrayList"%>
<%@page import="com.hb.bean.JavaBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	String msg="java,db,web,spring";
	pageContext.setAttribute("msg", msg);
	JavaBean bean = new JavaBean();
	pageContext.setAttribute("bean", bean);
	
	ArrayList<String> list = new ArrayList<String>();
	list.add("add1");
	list.add("add2");
	list.add("add3");
	list.add("add4");
	list.add("add5");
	pageContext.setAttribute("alist", list);
%>
<body>
	<h1>jstl01</h1>
	<p><%="출력바랍니다" %></p>
	<p><c:out value="출력바랍니다"></c:out></p>
	<p><c:out value="1234"></c:out></p>
	<p><c:out value="${msg }">값없음</c:out></p>
	<c:set var="var01" value="4321"></c:set>
	<c:set var="var02">메시지</c:set>
	<c:set var="msg" value="메시지2" scope="request"></c:set>
	<p>${var01 }</p>
	<p>${var02 }</p>
	<p>msg: ${pageScope.msg }</p>
	<p>msg: ${sessionScope.msg }</p>
	<p>msg: ${requestScope.msg }</p>
	<c:set target="${bean }" property="num" value="1000"></c:set>
	<c:set target="${bean }" property="name" value="admin"></c:set>
	<p>${bean.num }</p>
	<p>${bean.name }</p>
	<p><c:if test="${false }">참</c:if></p>
	<p>
	<c:if test="${3>0}">0보다크다
		<c:if test="${3>1}">1보다크다
			<c:if test="${3>2}">2보다크다
				<c:if test="${3>3}">3보다크다</c:if>
			</c:if>
		</c:if>
	</c:if>
	</p>
	<c:set var="a1" value="on"></c:set>
	<p>
		<c:choose>
			<c:when test="${a1 eq 'oh' }">감탄사</c:when>
			<c:when test="${a1 eq 'ok' }">좋아</c:when>
			<c:when test="${a1 eq 'no' }">싫어</c:when>
			<c:otherwise>몰라</c:otherwise>
		</c:choose>
	</p>
	<p>
		<ul>
			<c:forEach items="${alist }" var="obj">
				<li>${obj }</li>			
			</c:forEach>
		</ul>
	</p>
	<p>
		<ul>
			<%for(String obj2:list){ %>
				<li><%=obj2 %></li>			
			<%} %>
		</ul>
	</p>
	<p>
		<ul>
			<c:forTokens var="tok" items="${msg }" delims=",">
			<li>${tok }</li>
			</c:forTokens>
		
		</ul>
	</p>
</body>
</html>








