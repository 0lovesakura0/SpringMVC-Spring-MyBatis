<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="logup" method="post" onsubmit="return check()">
用户名：<input name='userNme'/>
密码：<input id='pwd1' name="password" type="password" />
确认密码：<input id='pwd2' type="password" />
<button type="reset">重新填</button>
<button type="submit">确认注册</button>
</form>
</body>
<script>
function check(){
	if(document.getElementById('pwd1').value==document.getElementById('pwd2').value){
		return true
	}else{
		alert('两次输入密码不一致，请重新输入！');
		document.getElementById('pwd1').value=''
		document.getElementById('pwd2').value=''
		return false
	}
		
}

</script>
</html>