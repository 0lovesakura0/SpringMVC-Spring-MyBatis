<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class='class'>
<div id ='id' ></div>
欢迎${LoginUser }登录
</body>
<!-- <script>if('${LoginUser}'==''){location.href='login.jsp'}</script> -->
<script>
	var text='';
	for (var i = 1; i <=9; i++) {
		for (var j = i; j <=9; j++) {
			text+=i+"X"+j+"="+i*j+"  ";
		} 
		text+="<br/>"
	}
	var test="alert('11111111')"
	document.getElementById('id').innerHTML=text;
	
</script>
</html>