<%@ page import="java.util.*" %>
<%@ page import="com.hb.dto.Guest01Bean" %>
<%@ page import="com.hb.dao.Guest01Dao" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<center>
	<h1>���</h1>
	<table width="80%" border="1" cellspacing="0">
		<tr bgcolor="#cccccc">
			<th>���</th>
			<th>�̸�</th>
			<th>��¥</th>
			<th>�ݾ�</th>
		</tr>
		<%
		String param1=request.getParameter("page");
		String param2=request.getParameter("viewcnt");
		if(param1==null){
			param1="1";
		}
		int pg=Integer.parseInt(param1);
		if(param2==null){
			param2="10";
		}
		int viewcnt=Integer.parseInt(param2);
		
		Guest01Dao dao= new Guest01Dao();
		ArrayList<Guest01Bean> list=null; 
		list=dao.selectAll(pg,viewcnt); 
		if(list!=null){
			for(int i=0; i<list.size(); i++){
				Guest01Bean bean=list.get(i);
		%>
		<tr>
			<td><a href="detail.jsp?idx=<%=bean.getSabun()%>"><%=bean.getSabun()%></a></td>
			<td><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%
			}
		}
		%>
	</table>
	<p>
	<% 
	int tot=dao.selectCnt();
	System.out.println("tot:"+tot);
	int limit=(tot-1)/viewcnt+1;	
	int strt=pg-2-1;
	int end=pg+2;
	if(strt<1)strt=0;
	if(end>limit)end=limit;
	//for(int i=0; i<limit; i++){
	if(pg-2>1){	
	%>
	<a href="list.jsp?page=<%=pg-3 %>&viewcnt=<%=viewcnt%>">��</a>
	<%	
	}
	for(int i=strt; i<end; i++){
	%>
		<a href="list.jsp?page=<%=i+1 %>&viewcnt=<%=viewcnt%>">[<%=i+1 %>]</a>
		
	<%
	} 
	if(limit>pg+2){
	%>
	<a href="list.jsp?page=<%=pg+3 %>&viewcnt=<%=viewcnt%>">��</a>
	<%} %>
	</p>
	<p>
	<%
	//10��
	int plmt=5;
	strt=(pg-1)/plmt*plmt+1;
	end=strt+(plmt-1);
	if(limit<end)end=limit;
	if(strt>1){
	%>
	<a href="list.jsp?page=<%=strt-1 %>&viewcnt=<%=viewcnt%>">��</a>
	<%
	}
	for(int i=strt; i<=end; i++){
	%>
	<a href="list.jsp?page=<%=i %>&viewcnt=<%=viewcnt%>">[<%=i %>]</a>
	<%} 
	if(end<limit){
	%>
	<a href="list.jsp?page=<%=end+1 %>&viewcnt=<%=viewcnt%>">��</a>
	<%} %>
	</p>
	<p>
		<form action="list.jsp">
			<select name="viewcnt">
				<option value="5">5���� ����</option>
				<option value="10" selected="selected">10���� ����</option>
				<option value="15">15���� ����</option>
			</select>
			<input type="submit" value="����">
		</form>
		<a href="add.jsp">�Է�</a>
	</p>
	</center>	
	<%@ include file="../template/footer.jspf" %>
</body>
</html>