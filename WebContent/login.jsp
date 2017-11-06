<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>look here every body</title>
<style>
#header{
	background-color: black;
	color: white;
	text-align: center;
	padding:20px;
}

#leaft{
	background-color: black;
	color: white;
	height:300px;
	width: 40px;
	float:left;
	padding:20px;
	line-height: 50px;
}

#center{
	width: 50px;
	float:left;  
}

#low{
	background-color: black;
	color: white;
	clear:both;
	text-align: center;
}
</style>
</head>

<body>
	
	
	<div id="header">
	<h1>hello every body</h1>
	</div>
	
	<div id="leaft">
	<big><strong>1</strong></big><br>
	<big><strong>2</strong></big><br>
	<big><strong>3</strong></big><br>
	</div>
	
	<div id="center">
	<h1> hello,china</h1>
	<p> hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello
	</p>
	<p id="m"> hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello
	</p>
	</div>
	
	<div id="low">
	<big><strong>good bye!</strong></big><br>
	</div>
	<br>
	<br>

	<br>
	<br>
	<br>
	<form action="login" method="post">
	<fieldset>
	<legend>personal information</legend>
	name:<input name="username" value="admin"><br>
	password:<input name="password" value="admin1">
	<br>
	<br>
	sex:<input type="radio" name="sex">男
		<input type="radio" name="sex">女
	<br>
	<br>
	${LoginUser} 
	<br>
	<br>
	<input type="submit" value="submit">
	<br>
	<br>
	</fieldset>
	</form>
	
	
	<script>
		document.getElementById("m").innerHTML="good afternoon";
	</script>
	<br>
	<br>
	<p id="id">hello every body</p>
	<br>
	<br>
	<button type="button" onclick="displayDate()">请点我</button>
	<br>
	<br>
	
	<script>
		function displayDate() {
			document.getElementById("id").innerHTML=Date();
		}
	</script>
	
	
</body>
</html>