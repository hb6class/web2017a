<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/frame.css"/>
	<style>
	#idchk{
		color: red;
	}
	</style>
	<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
	//{chk:[{result:true}]}
	$(document).ready(function() {
		$('#id').on("focusout",function(){
			var val=$('#id').val();
			$.ajax({
				'url':'idchk.hb',
				'method ':'get',
				'data':{'id':val},
				'dataType':'json',
				'error':function(jqXHR, textStatus){
					alert(textStatus);
				},
				'success':function(data){
					if(!data.chk[0].result){
						$('#idchk').text('사용불가:중복된 아이디');
					}else{
						$('#idchk').text('사용가능');
					}
					
				}
			});
		});
	});
	
	
	</script>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<div id="content">
		<h1>회원가입</h1>
		<form action="member.hb" method="post">
		<div>
			<label for="id">id</label>
			<input type="text" name="id" id="id" />
			<span id="idchk"></span>
		</div>
		<div>
			<label for="pw">pw</label>
			<input type="text" name="pw" id="pw" />
		</div>
		<div>
			<label for="email">email</label>
			<input type="text" name="email" id="email" />
		</div>
		<div>
			<button type="submit">회원가입</button>
			<button type="button">뒤로</button>
		</div>
		</form>
	</div>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>