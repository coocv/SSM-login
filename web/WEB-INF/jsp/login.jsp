<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
	<script type="text/javascript" src='../jquery/jquery-3.6.0.js'></script>
	<style type="text/css">
		body,html{
			margin: 0;
			padding: 0;
			height: 100%;
		}
		.container{
			height: 100%;
			background: linear-gradient(to right,#00d2ff,#eaecc6);
		}
		form{
			background: #fff;
			width: 400px;
			height: 450px;
			border-radius: 15px;
			text-align: center;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
		}
		.text{
			font-size: 40px;
			font-weight: bold;
			text-align: center;
			line-height: 60px;
			margin-top: 40px;
			text-shadow: 2px 2px 5px rgba(72,61,139,.2);
		}
		.item,.btn{
			margin: 50px auto;
			width: 90%;
		}
		input{
			width: 70%;
			margin-top: 20px;
			padding: 10px;
			color: dimgrey;
			font-weight: bold;
			border: none;
			outline: none;
			border-bottom: 2px solid #eaecc6;
		}
		input::placeholder{
			font-weight: bold;
			color: #acb7c9;
		}
		input:focus{
			animation: bBottom 2s infinite;
		}
		@keyframes bBottom {
			50%{
				border-bottom: 2px solid #a6c1ee;
			}
		}
		button{
			height: 45px;
			width: 280px;
			line-height: 40px;
			border: none;
			color: #fff;
			font-weight: bold;
			letter-spacing: 10px;
			text-align: center;
			cursor: pointer;
			border-radius: 10px;
			background: linear-gradient(to right,#00d2ff,#eaecc6);
			background-size: 200%;
		}
		button:hover{
			box-shadow: 0 5px 15px 0 rgba(65,105,225,0.24),0 10px 30px 0 rgba(65,105,225,0.19);
			transition: .4s;
			animation: btnAnimate 2s infinite;

		}
		@keyframes btnAnimate {
			70%{
				background-size: 100%;
			}
		}
		#error{
			display: block;
			margin-top: 20px;
			color: red;
			font-size: 12px;
			font-weight: bold;
		}
	</style>
</head>
<body>
<div class="container">
	<form  action="${pageContext.request.contextPath}/login" method="post" onsubmit="return checkform()">
		<div class="text">登录</div>
		<div class="item">
			<input type="text" name="username" id="username" placeholder="用户名"/>
			<input type="password" name="password" id="password" placeholder="密码"/>
		</div>
		<button type="submit">登录</button>
		<br>
		<span id="error"></span>
	</form>
</div>
<script type="text/javascript">
function checkform(){
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;

	if(username == null || username == ""){
		document.getElementById("error").innerHTML = "用户名不能为空!";
		return false;
	}
	if(password == null || password == ""){
		document.getElementById("error").innerHTML = "密码不能为空!";
		return false;
	}
	return true;
}
</script>
</body>
</html>