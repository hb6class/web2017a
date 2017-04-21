<%@page import="java.util.Date"%>
<%@page import="com.hb.bean.JavaBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{
		border: 1px solid red;
	}
</style>
</head>
<%
	String[] sts={"aa","1234","afd123"};
	pageContext.setAttribute("sts", sts);
	ArrayList list = new ArrayList();
	list.add("list1");
	list.add("list2");
	list.add("list3");
	pageContext.setAttribute("list", list);
	HashMap map = new HashMap();
	map.put("obj1", "map1");
	map.put("obj2", "map2");
	map.put("obj3", "map3");
	pageContext.setAttribute("hmap", map);
	JavaBean bean = new JavaBean();
	bean.setNum(1234);
	//bean.setName("user");
	//bean.setNalja(new Date());
	pageContext.setAttribute("bean", bean);
%>
<body>
	<h1>el2</h1>
	<div>
		<ul>
			<li>${sts[0] }</li>
			<li>${sts[1] }</li>
			<li>${sts[2] }</li>
		</ul>
	</div>
	<div>
		<ul>
			<li>${list.get(0) }</li>
			<li>${list.get(1) }</li>
			<li>${list.get(2) }</li>
		</ul>
	</div>
	<div>
		<ul>
			<li>${hmap.obj1 }</li>
			<li>${hmap.obj2 }</li>
			<li>${hmap.obj3 }</li>
		</ul>
	</div>
	<div>
		<ul>
			<li>${bean.num }</li>
			<li>${bean.name }</li>
			<li>${bean.nalja }</li>
			<li>${bean==null }</li>
			<li>${empty bean }</li>
		</ul>
	</div>
</body>
</html>











